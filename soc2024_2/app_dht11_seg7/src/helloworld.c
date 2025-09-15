/**
Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
SPDX-License-Identifier: MIT
**/
/*
 
helloworld.c: simple test application*
This application configures UART 16550 to baud rate 9600.
PS7 UART (Zynq) is not initialized by this application, since
bootrom/bsp configures it to baud rate 115200*
------------------------------------------------
| UART TYPE   BAUD RATE                        |
------------------------------------------------
uartns550   9600
uartlite    Configurable only in HW design
ps7_uart    115200 (configured by bootrom/bsp)*/
#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"

#define DHT11_ADDRㅊ
#define FND_ADDR XPAR_MYIP_FND_0_BASEADDR
int main()
{
    init_platform();

volatile unsigned int *dht11_instance = (volatile unsigned int*)DHT11_ADDR;
 volatile unsigned int *fnd_cntr = (volatile unsigned int *)FND_ADDR;
fnd_cntr[1] = 0;
fnd_cntr[0] = 0;
uint32_t Humidity = 0;
uint32_t Temperature = 0;
while (1) {
//     uint32_t Humidity   = dht11_instance[0];
// uint32_t Temperature = dht11_instance[1];
    Humidity    = dht11_instance[0];
        Temperature = dht11_instance[1];
printf("Temperature : %d\nHumidity : %d\n",Temperature, Humidity);

int fnd_val = (Humidity % 10) * 1        // 습도 일
             + (Humidity / 10) * 10      // 습도 십
             + (Temperature % 10) * 100  // 온도 일
             + (Temperature / 10) * 1000;// 온도 십


fnd_cntr[0] =  fnd_val;
// printf("Temperature : %d\n",dht11_instance[1]);
sleep(1);
}
    print("Hello World\n\r");
    print("Successfully ran Hello World application");
    cleanup_platform();
    return 0;
}