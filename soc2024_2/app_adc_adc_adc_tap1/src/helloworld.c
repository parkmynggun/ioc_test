#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"

#define MYIP_BASEADDR  XPAR_MYIP_ADC_NEW_0_BASEADDR
#define FND_BASE       XPAR_MYIP_FND_0_BASEADDR

volatile uint32_t *fnd_ptr = (uint32_t *)FND_BASE;

uint32_t adc_scaled[4] = {0,0,0,0}; // X1, Y1, X2, Y2

void fnd_display(uint16_t value)
{
    *fnd_ptr = (value > 9999) ? 9999 : value;
}

int main() {
    u32 adc_raw[4]; // X1, Y1, X2, Y2

    // 측정 기준값
    const u32 adc_neutral[4] = {610, 603, 616, 624};
    const u32 adc_max[4]     = {1235, 904, 1235, 904}; // 실제 최대값
    const u32 adc_min[4]     = {4, 350, 4, 350};       // 실제 최소값

    printf("ADC Read Example Start\n");

    while(1) {
        // AXI-Lite 레지스터에서 32비트 값 읽기 (하위 12비트)
        adc_raw[0] = Xil_In32(MYIP_BASEADDR + 0x0) & 0xFFF; // X1
        adc_raw[1] = Xil_In32(MYIP_BASEADDR + 0x4) & 0xFFF; // Y1
        adc_raw[2] = Xil_In32(MYIP_BASEADDR + 0x8) & 0xFFF; // X2
        adc_raw[3] = Xil_In32(MYIP_BASEADDR + 0xC) & 0xFFF; // Y2

        // 범위 제한
        for(int i=0;i<4;i++){
            if(adc_raw[i] > adc_max[i]) adc_raw[i] = adc_max[i];
            if(adc_raw[i] < adc_min[i]) adc_raw[i] = adc_min[i];
        }

        // 스케일링
        for(int i=0;i<4;i++){
            if(adc_raw[i] >= adc_neutral[i])
                adc_scaled[i] = 2048 + (uint32_t)(((uint64_t)(adc_raw[i] - adc_neutral[i]) * (4095-2048)) / (adc_max[i] - adc_neutral[i]));
            else
                adc_scaled[i] = (uint32_t)(((uint64_t)(adc_raw[i] - adc_min[i]) * 2048) / (adc_neutral[i] - adc_min[i]));

            // 최종 클램프
            if(adc_scaled[i] > 4095) adc_scaled[i] = 4095;
            if(adc_scaled[i] < 0)    adc_scaled[i] = 0;
        }

        // FND에 X1 표시 (원하면 다른 값으로 변경 가능)
        fnd_display(adc_scaled[1]);

     printf("X1: %d, Y1: %d, X2: %d, Y2: %d\n",
       adc_scaled[0], adc_scaled[1], adc_scaled[2], adc_scaled[3]);


        for(volatile int i=0; i<1000000; i++); // 지연
    }

    return 0;
}
