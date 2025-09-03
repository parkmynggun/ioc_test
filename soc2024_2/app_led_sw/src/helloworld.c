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
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"
#include "xgpio.h"

#define GPIO_ADDR     XPAR_AXI_GPIO_LED_SW_BASEADDR
#define LED_CHANNEL   1
#define SW_CHANNEL    2

int main()
{
    
    init_platform();

    print("Hello World\n\r");
    print("Successfully ran Hello World application");

    XGpio gpio_device;                                                                  // 구조체 타입 선언
    XGpio_Initialize(&gpio_device, GPIO_ADDR);                    // 구조체 내부 XPAR_AXI_GPIO_LED_SW_BASEADDR 연결 
    XGpio_SetDataDirection(&gpio_device, LED_CHANNEL, 0x0000);  //   포트 초기화 (구조체 선언, 포트채널선언, 비트마스킹)
    XGpio_DiscreteWrite(&gpio_device, LED_CHANNEL, 0xac0f);           // 출력 (구조체 선언, 포트채널선언, 비트마스킹)
    XGpio_SetDataDirection(&gpio_device, SW_CHANNEL, 0xffff);   //입력신호 초기화(구조체 선언, 포트채널선언, 비트마스킹)
u32 data;  // 스위치 데이터 저장 변수
    while (1) {
        print("hello\n\r");
        sleep(1);

        data = XGpio_DiscreteRead(&gpio_device, SW_CHANNEL); //입력신호 읽음(구조체 선언, 포트채널선언)
      
       
        printf("switch : %x\n", data);  // F 부동소수점 계산할떄 주로 쓰임. X 16진수까지 계산가능
     
            XGpio_DiscreteWrite(&gpio_device, LED_CHANNEL, data); //구조체, 포트채널, 원하는 데이터 출력 

       

        
    }

    cleanup_platform();
    return 0;
}
