/******************************************************************************
* XADC 연속 샘플링을 이용한 ADC 값 측정 (Vaux6, Vaux14)
******************************************************************************/
#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"

#define ADC_ADDR XPAR_XSYSMON_0_BASEADDR
#define FND_ADDR XPAR_MYIP_FND_0_BASEADDR

// FND 출력을 위한 포인터
volatile uint32_t *fnd_ptr = (uint32_t *)FND_ADDR;

// XADC 레지스터 읽기 함수
uint32_t read_xadc_reg(uint32_t offset)
{
    return *(volatile uint32_t *)(ADC_ADDR + offset);
}

// XADC 레지스터 쓰기 함수
void write_xadc_reg(uint32_t offset, uint32_t value)
{
    *(volatile uint32_t *)(ADC_ADDR + offset) = value;
}

// Vaux0~15 레지스터 오프셋
uint32_t channel_offsets[16] = {
    0x240,0x244,0x248,0x24C,0x250,0x254,0x258,0x25C,
    0x260,0x264,0x268,0x26C,0x270,0x274,0x278,0x27C
};

// XADC 초기화 (연속 샘플링 모드)
void init_xadc(void)
{
    xil_printf("=== XADC Initialization (Continuous Mode) ===\n\r");

    // 1. 시퀀서를 'Default Mode'로 설정하여 초기화 준비
    write_xadc_reg(0x300, 0x00000000);

    // 2. 시퀀서에서 사용할 채널 활성화 (Vaux6, Vaux14)
    // 0x4040 = (1 << 14) | (1 << 6)
    write_xadc_reg(0x320, 0x00004040);

    // 3. Configuration Register 1 설정 (여기서는 기본값 0 사용, 채널 평균 비활성화 등)
    write_xadc_reg(0x304, 0x00000000);

    // 4. Configuration Register 0 설정: **연속 시퀀스 모드**로 설정
    // 레지스터의 bits[5:4]를 '10'으로 설정하여 Continuous Sequence Mode로 만듭니다.
    // 따라서 값은 0b00100000 = 0x20 입니다.
    write_xadc_reg(0x300, 0x00000020);

    xil_printf("XADC configured for continuous sampling of Vaux6 and Vaux14.\n\r");
}


// ADC 채널 결과 읽기 (12비트)
uint16_t get_adc_value(uint8_t channel)
{
    if(channel > 15) return 0;
    uint32_t raw_value = read_xadc_reg(channel_offsets[channel]);
    return (uint16_t)((raw_value >> 4) & 0xFFF);
}

// FND에 4자리 숫자 표시
void fnd_display(uint16_t value)
{
    *fnd_ptr = (value > 9999) ? 9999 : value;
}

int main()
{
    init_platform();
    xil_printf("\n=== XADC Sampling Test (Vaux6, Vaux14) ===\n\r");

    // XADC 초기화
    init_xadc();

    int count = 0;
    while(1) {
        uint16_t v6_raw = get_adc_value(6);
        uint16_t v14_raw = get_adc_value(14);

        xil_printf("RAW - V6: %4d, V14: %4d | ", v6_raw, v14_raw);

        // 전압 변환 (0~3.3V 기준)
        float v6_voltage = (v6_raw * 3.3f) / 4095.0f;
        float v14_voltage = (v14_raw * 3.3f) / 4095.0f;

        xil_printf("[%04d] Vaux6: %4d (%.3fV) | Vaux14: %4d (%.3fV)\n\r",
                   count++, v6_raw, v6_voltage, v14_raw, v14_voltage);

        // FND에는 Vaux6 값 표시
        fnd_display(v6_raw);

        usleep(100000); // 0.1초 간격
    }

    cleanup_platform();
    return 0;
}
