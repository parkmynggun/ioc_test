#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"
#include "xil_io.h"

#define BTN_BASE XPAR_MYIP_BTN_0_BASEADDR
#define MYIP_BASEADDR XPAR_MYIP_ADC_NEW_0_BASEADDR

#define SYS_CLK_FREQ 100000000
#define PWM_BASEADDR XPAR_MYIP_PWM_0_BASEADDR
#define REG_DUTY      0x0
#define REG_TEMP      0x4
#define REG_DUTYSTEP  0x8

uint32_t adc_scaled[4] = {0,0,0,0};

// ---------------- PWM 함수 ----------------
uint32_t angle_to_duty(uint32_t angle, uint32_t duty_step) {
    uint32_t duty_min = duty_step * 5 / 200;
    uint32_t duty_max = duty_step * 25 / 200;
    return duty_min + ((duty_max - duty_min) * angle) / 180;
}

void pwm_set(uint32_t base, uint32_t duty, uint32_t pwm_freq, uint32_t duty_step) {
    uint32_t temp = SYS_CLK_FREQ / pwm_freq / duty_step / 2;
    Xil_Out32(base + REG_DUTY, duty);
    Xil_Out32(base + REG_TEMP, temp);
    Xil_Out32(base + REG_DUTYSTEP, duty_step);
}

// ---------------- 보정 함수 ----------------
uint32_t remap_adc(uint32_t raw, uint32_t raw_min, uint32_t raw_max) {
    if (raw_max <= raw_min) return 0;
    if (raw <= raw_min) return 0;
    if (raw >= raw_max) return 4095;
    uint64_t numer = (uint64_t)(raw - raw_min) * 4095;
    uint32_t denom = raw_max - raw_min;
    return (uint32_t)(numer / denom);
}

// ---------------- ADC → 서보각 변환 ----------------
uint32_t adc_to_angle(uint32_t adc_val) {
    return (adc_val * 180) / 4095;
}

// ---------------- Deadzone 적용 ----------------
#define DEADZONE 20   // ±20 범위는 서보 고정
uint32_t apply_deadzone(uint32_t adc_val, uint32_t mid_val) {
    if (adc_val > mid_val - DEADZONE && adc_val < mid_val + DEADZONE) {
        return mid_val;
    }
    return adc_val;
}

// ---------------- LPF 적용 ----------------
uint32_t lowpass_filter(uint32_t prev_angle, uint32_t new_angle, float alpha) {
    return (uint32_t)(prev_angle * (1.0f - alpha) + new_angle * alpha);
}

int main() {
    init_platform();
    xil_printf("ADC → Servo Control Start\r\n");

    const uint32_t RAW_MIN[4] = {7, 7, 7, 7};
    const uint32_t RAW_MAX[4] = {900, 900, 900, 900};

    u32 adc_raw[4];
    uint32_t duty_step = 1000;

    uint32_t mid_adc = 450;        // 조이스틱 중앙 값 (측정 후 수정)
    uint32_t prev_angle = 90;      // LPF용 이전 각도
    float alpha = 0.2f;            // LPF 계수

    while (1) {
        // ----------- ADC 읽기 (변경 없음) -----------
        adc_raw[0] = Xil_In32(MYIP_BASEADDR + 0x0) & 0xFFF;
        adc_raw[1] = Xil_In32(MYIP_BASEADDR + 0x4) & 0xFFF;
        adc_raw[2] = Xil_In32(MYIP_BASEADDR + 0x8) & 0xFFF;
        adc_raw[3] = Xil_In32(MYIP_BASEADDR + 0xC) & 0xFFF;

        // ----------- 보정 처리 -----------
        for (int i = 0; i < 4; ++i) {
            adc_scaled[i] = remap_adc(adc_raw[i], RAW_MIN[i], RAW_MAX[i]);
        }

        // ----------- Deadzone 적용 -----------
        uint32_t adc_dead = apply_deadzone(adc_scaled[0], mid_adc);

        // ----------- 서보 각도 변환 및 LPF 적용 -----------
        uint32_t angle_raw = adc_to_angle(adc_dead);
        uint32_t angle = lowpass_filter(prev_angle, angle_raw, alpha);
        prev_angle = angle;

        // ----------- 서보 PWM 출력 -----------
        uint32_t duty = angle_to_duty(angle, duty_step);
        pwm_set(PWM_BASEADDR, duty, 50, duty_step);

        // ----------- 디버깅 출력 -----------
        xil_printf("Angle:%3d  RAW:%4d  Scaled:%4d\n",
                   angle, adc_raw[0], adc_scaled[0]);

        usleep(20000);
    }

    cleanup_platform();
    return 0;
}
