#include <stdio.h>
#include <stdint.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"

#define TXTLCD_ADDR  XPAR_MYIP_LCD_0_BASEADDR
#define DHT_ADDR  XPAR_MYIP_DHT11_TAP_TAP11_0_BASEADDR
void lcdCommand(uint8_t command, unsigned int *txtlcd_instance)
{
    while (txtlcd_instance[3]);
    txtlcd_instance[0] = 0x27;
    txtlcd_instance[1] = command;
    txtlcd_instance[2] = 0x01;
    while (txtlcd_instance[3]);
    txtlcd_instance[2] = 0x00;
}

void lcdData(uint8_t data, unsigned int *txtlcd_instance)
{
    while (txtlcd_instance[3]);
    txtlcd_instance[0] = 0x27;
    txtlcd_instance[1] = data;
    txtlcd_instance[2] = 0x03;
    while (txtlcd_instance[3]);
    txtlcd_instance[2] = 0x00;
}

void lcdInit(unsigned int *txtlcd_instance)
{
    msleep(50);
    lcdCommand(0x33, txtlcd_instance);
    msleep(5);
    lcdCommand(0x32, txtlcd_instance);
    msleep(5);
    lcdCommand(0x28, txtlcd_instance);
    msleep(5);
    lcdCommand(0x0C, txtlcd_instance);
    msleep(5);
    lcdCommand(0x06, txtlcd_instance);
    msleep(5);
    lcdCommand(0x01, txtlcd_instance);
    msleep(2);
}

void lcdString(char *str, unsigned int *txtlcd_instance)
{
    while (*str) lcdData(*str++, txtlcd_instance);
}

void moveCursor(uint8_t row, uint8_t col, unsigned int *txtlcd_instance)
{
    lcdCommand(0x80 | (row << 6) | col, txtlcd_instance);
}

void displayClear(unsigned int *txtlcd_instance)
{
    lcdCommand(0x01, txtlcd_instance);
    usleep(2000);
}

int main()
{
    init_platform();
    xil_printf("Hello World\n\r");
    xil_printf("Successfully ran Hello World application\n\r");

    volatile unsigned int *txtlcd_instance = (volatile unsigned int*)TXTLCD_ADDR;

    lcdInit(txtlcd_instance);
    lcdString("Humi : 00", txtlcd_instance);
    moveCursor(1, 0, txtlcd_instance);
    lcdString("Temp : 00", txtlcd_instance);

    while (1) {
    }

    cleanup_platform();
    return 0;
}
