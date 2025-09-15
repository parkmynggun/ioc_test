#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"

#define MYIP_BASEADDR  XPAR_MYIP_ADC_NEW_0_BASEADDR
#define FND_BASE       XPAR_MYIP_FND_0_BASEADDR

volatile uint32_t *fnd_ptr = (uint32_t *)FND_BASE;

uint32_t adc_scaled_x = 0;
uint32_t adc_scaled_y = 0;

void fnd_display(uint16_t value)
{
    *fnd_ptr = (value > 9999) ? 9999 : value;
}

int main() {
    u32 adc_x, adc_y;

    // 측정 기준값
    const u32 adc_neutral_x = 627;
    const u32 adc_neutral_y = 627;
    const u32 adc_max_x = 1235; // 실제 최대 측정값
    const u32 adc_min_x = 4;    // 실제 최소 측정값
    const u32 adc_max_y = 904;  // 실제 최대 측정값
    const u32 adc_min_y = 598;  // 실제 최소 측정값

    printf("ADC Read Example Start\n");

    while(1) {
        // AXI-Lite 레지스터에서 32비트 값 읽기 (하위 12비트만)
        adc_x = Xil_In32(MYIP_BASEADDR + 0x0) & 0xFFF;
        adc_y = Xil_In32(MYIP_BASEADDR + 0x4) & 0xFFF;

        // X raw값 범위 제한
        if(adc_x > adc_max_x) adc_x = adc_max_x;
        if(adc_x < adc_min_x) adc_x = adc_min_x;

        // Y raw값 범위 제한
        if(adc_y > adc_max_y) adc_y = adc_max_y;
        if(adc_y < adc_min_y) adc_y = adc_min_y;

        // X 스케일링
        if(adc_x >= adc_neutral_x)
            adc_scaled_x = 2048 + (uint32_t)(((uint64_t)(adc_x - adc_neutral_x) * (4095-2048)) / (adc_max_x - adc_neutral_x));
        else
            adc_scaled_x = (uint32_t)(((uint64_t)(adc_x - adc_min_x) * 2048) / (adc_neutral_x - adc_min_x));

        // Y 스케일링
        if(adc_y >= adc_neutral_y)
            adc_scaled_y = 2048 + (uint32_t)(((uint64_t)(adc_y - adc_neutral_y) * (4095-2048)) / (adc_max_y - adc_neutral_y));
        else
            adc_scaled_y = (uint32_t)(((uint64_t)(adc_y - adc_min_y) * 2048) / (adc_neutral_y - adc_min_y));

        // 최종 클램프
        if(adc_scaled_x > 4095) adc_scaled_x = 4095;
        if(adc_scaled_x < 0)    adc_scaled_x = 0;
        if(adc_scaled_y > 4095) adc_scaled_y = 4095;
        if(adc_scaled_y < 0)    adc_scaled_y = 0;

        // FND에 X 표시 (원하면 Y로 변경 가능)
        fnd_display(adc_scaled_x);

        printf("ADC X: %d -> %d, ADC Y: %d -> %d\n", adc_x, adc_scaled_x, adc_y, adc_scaled_y);

        // 잠시 지연
        for(volatile int i=0; i<1000000; i++);
    }

    return 0;
}
