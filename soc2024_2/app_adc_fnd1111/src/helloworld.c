/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"
#include <stdlib.h> // abs() 함수를 위해 추가


#include "xil_io.h"  // Xil_In32, Xil_Out32
#include <stdio.h>

#define MYIP_BASE_ADDR XPAR_MYIP_ADC_CNT_0_BASEADDR
#define ADC_X_OFFSET   0x00
#define ADC_Y_OFFSET   0x04


int main() {
    u32 adc_x, adc_y;

    while(1) {
        adc_x = Xil_In32(MYIP_BASE_ADDR + ADC_X_OFFSET); // slv_reg0 읽기
        adc_y = Xil_In32(MYIP_BASE_ADDR + ADC_Y_OFFSET); // slv_reg1 읽기

        printf("ADC X: %d, ADC Y: %d\n", adc_x, adc_y);
    }
    return 0;
}
