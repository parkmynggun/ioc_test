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


#include "platform.h"
#include "sleep.h"
#include "xgpio.h"
#include "xil_printf.h"
#include "xparameters.h"
#include <stdint.h>
#include <stdio.h>
#define BTN_ADDR XPAR_AXI_GPIO_BTN_BASEADDR
#define BTN_CHANNEL 1
#define FND_ADDR XPAR_MYIP_FND_0_BASEADDR

int main()
{

    init_platform();

  XGpio btn_inst, fnd_inst;
  XGpio_Initialize(&btn_inst, BTN_ADDR);
  XGpio_SetDataDirection(&btn_inst, BTN_CHANNEL, 0xf);



volatile unsigned int *fnd_cntr = (volatile unsigned int *)FND_ADDR;
fnd_cntr[1] = 0;
fnd_cntr[0] = 0;

unsigned int data = 0;


  uint32_t btn_data;
uint32_t cnt = 0;
uint32_t prev_btn_state = 0;


  while (1) {
btn_data = XGpio_DiscreteRead(&btn_inst, BTN_CHANNEL);

    // 2. 버튼 눌림 처리
    if (btn_data != 0 && prev_btn_state == 0) {
        switch (btn_data) {
            case 1: data += 2; break;
            case 2: if (data > 0) data -= 1; break;
            case 4: data += 1; break;
            case 8: if (data >= 2) data -= 2; else data = 0; break;
        }
        if (data > 9999) data = 0;
   
        msleep(1); // 디바운싱
    }
    prev_btn_state = btn_data;
fnd_cntr[0] = data;


    xil_printf("Button: %x, Data: %d\n", btn_data, data);
  }
  cleanup_platform();
  return 0;
}