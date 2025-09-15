

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

#define FND_ADDR XPAR_AXI_GPIO_FND_BASEADDR
#define COM_CHANNEL 2
#define SEG_CHANNEL 1

volatile unsigned int FND_font[16] = {
    0b11000000, 0b11111001, 0b10100100, 0b10110000, 0b10011001, 0b10010010,
    0b10000010, 0b11111000, 0b10000000, 0b10010000, 0b10001000, 0b00000011,
    0b11000110, 0b10100001, 0b10000110, 0b10001110};

volatile unsigned int FND_digit[4] = {0b1110, 0b1101, 0b1011, 0b0111};

volatile unsigned FND[4];



int main() {
  init_platform();

  print("Hello World\n\r");
  print("Successfully ran Hello World application");

  XGpio btn_inst, fnd_inst;
  XGpio_Initialize(&btn_inst, BTN_ADDR);
  XGpio_SetDataDirection(&btn_inst, BTN_CHANNEL, 0xf);

  XGpio_Initialize(&fnd_inst, FND_ADDR);
  XGpio_SetDataDirection(&fnd_inst, COM_CHANNEL, 0);

  XGpio_Initialize(&fnd_inst, FND_ADDR);
  XGpio_SetDataDirection(&fnd_inst, SEG_CHANNEL, 0);

  uint32_t btn_data;
  uint32_t data = 0;
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
        else if ( data <= 0) data = 9999;
        msleep(1); // 디바운싱
    }
    prev_btn_state = btn_data;

    // 3. FND 배열 업데이트
    FND[0] = FND_font[data % 10];
    FND[1] = FND_font[data / 10 % 10];
    FND[2] = FND_font[data / 100 % 10];
    FND[3] = FND_font[data / 1000 % 10];

    // 4. FND 스캔 출력
    for (uint8_t i = 0; i < 4; i++) {
        XGpio_DiscreteWrite(&fnd_inst, COM_CHANNEL, FND_digit[i]);
        XGpio_DiscreteWrite(&fnd_inst, SEG_CHANNEL, FND[i]);
        msleep(1);
    }
   

    xil_printf("Button: %x, Data: %d\n", btn_data, data);
  }
  cleanup_platform();
  return 0;
}
