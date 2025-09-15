#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"

#define BTN_BASE XPAR_MYIP_BTN_0_BASEADDR
#define MYIP_BASEADDR XPAR_MYIP_ADC_NEW_0_BASEADDR
#define FND_BASE XPAR_MYIP_FND_0_BASEADDR

volatile uint32_t *fnd_ptr = (uint32_t *)FND_BASE;
uint32_t adc_scaled[4] = {0,0,0,0}; // 보정된 값 (0..4095)

// FND 표시
void fnd_display(uint16_t value)
{
    *fnd_ptr = (value > 9999) ? 9999 : value;
}

// 버튼 읽기
uint32_t read_raw_btn() {
    return Xil_In32(BTN_BASE + 0x8);
}

// 새로운 선형 보정 함수 (Remapping)
// 실제 측정된 raw_min, raw_max 범위를 0..4095 범위로 매핑합니다.
uint32_t remap_adc(uint32_t raw, uint32_t raw_min, uint32_t raw_max) {
    // raw_max와 raw_min이 같으면 0으로 나누는 오류가 발생하므로 예외 처리
    if (raw_max <= raw_min) {
        return 0;
    }
    // 범위를 벗어나는 값은 최소/최대값으로 고정 (Clamping)
    if (raw <= raw_min) {
        return 0;
    }
    if (raw >= raw_max) {
        return 4095;
    }

    // 선형 비례식 계산 (중간 계산 시 오버플로우 방지를 위해 64비트 사용)
    // scaled = (raw - raw_min) * 4095 / (raw_max - raw_min)
    uint64_t numer = (uint64_t)(raw - raw_min) * 4095;
    uint32_t denom = raw_max - raw_min;
    
    return (uint32_t)(numer / denom);
}


int main() {
    init_platform();
    print("Button and ADC Test Started. Please measure RAW min/max values.\n\r");

    // =================================================================
    // ★★★ 중요 ★★★
    // 이 부분의 값을 반드시 실제 조이스틱을 움직여서 측정한 값으로 교체해야 합니다.
    // 아래는 측정을 통해 얻은 예시 값입니다.
    // 채널 순서: X1, Y1, X2, Y2
    const uint32_t RAW_MIN[4] = {8, 8, 7, 7};    // 각 채널의 최소 RAW 값
    const uint32_t RAW_MAX[4] = {3169, 3169, 3169, 31}; // 각 채널의 최대 RAW 값
    // =================================================================

    u32 adc_raw[4];
    uint32_t prev_btn_state = 0xF;
    uint32_t debounce_count = 0;
    int print_counter = 0;

    while (1) {
        uint32_t btn_data = read_raw_btn();

        // 간단 디바운싱
        if (btn_data != prev_btn_state) {
            debounce_count++;
            if (debounce_count > 50) {
                uint32_t pressed = prev_btn_state & (~btn_data);
                if (pressed) {
                    switch (pressed) {
                        case 0x1: xil_printf("Button 0 Pressed\n"); break;
                        case 0x2: xil_printf("Button 1 Pressed\n"); break;
                        case 0x4: xil_printf("Button 2 Pressed\n"); break;
                        case 0x8: xil_printf("Button 3 Pressed\n"); break;
                    }
                }
                prev_btn_state = btn_data;
                debounce_count = 0;
            }
        } else {
            debounce_count = 0;
        }

        // ADC 채널별 raw 값 읽기
        adc_raw[0] = Xil_In32(MYIP_BASEADDR + 0x0) & 0xFFF;
        adc_raw[1] = Xil_In32(MYIP_BASEADDR + 0x4) & 0xFFF;
        adc_raw[2] = Xil_In32(MYIP_BASEADDR + 0x8) & 0xFFF;
        adc_raw[3] = Xil_In32(MYIP_BASEADDR + 0xC) & 0xFFF;

        // 새로운 보정 함수를 사용하여 보정 적용
        for (int i = 0; i < 4; ++i) {
            adc_scaled[i] = remap_adc(adc_raw[i], RAW_MIN[i], RAW_MAX[i]);
        }

        // FND에 Y1 채널(adc_scaled[1]) 값 표시
        fnd_display(adc_scaled[1]);

        // 1000번 루프마다 한번씩 터미널에 상태 출력
        print_counter++;
        if (print_counter >= 1000) {
            xil_printf("X1: %4d, Y1: %4d, X2: %4d, Y2: %4d (RAW: %4d, %4d, %4d, %4d)\n",
                   adc_scaled[0], adc_scaled[1], adc_scaled[2], adc_scaled[3],
                   adc_raw[0], adc_raw[1], adc_raw[2], adc_raw[3]);
            print_counter = 0;
        }

        usleep(10);
    }

    cleanup_platform();
    return 0;
}