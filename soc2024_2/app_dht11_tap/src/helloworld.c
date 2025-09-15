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

#define DHT11_ADDR XPAR_MYIP_DHT11_TAP_TAP11_0_BASEADDR

int main()
{
    init_platform();

volatile unsigned int *dht11_instance = (volatile unsigned int*)DHT11_ADDR;
 
uint32_t Humidity = 0;
uint32_t Temperature = 0;
while (1) {
//     uint32_t Humidity   = dht11_instance[0];
// uint32_t Temperature = dht11_instance[1];
    Humidity    = dht11_instance[0];
        Temperature = dht11_instance[1];
printf("Humidity : %d\nTemperature : %d\n",Humidity, Temperature);



// printf("Temperature : %d\n",dht11_instance[1]);
sleep(1);
}
    print("Hello World\n\r");
    print("Successfully ran Hello World application");
    cleanup_platform();
    return 0;
}