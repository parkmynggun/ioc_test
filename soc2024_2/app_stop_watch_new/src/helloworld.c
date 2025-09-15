/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"
#include "xiic.h"
#include "xgpio.h"

#define BTN_ADDR XPAR_XGPIO_0_BASEADDR
#define IIC2_ADDR XPAR_AXI_IIC_0_BASEADDR
#define STOP_WATCH_ADDR XPAR_MYIP_STOP_WATCH_0_BASEADDR
#define BTN_CHANNEL 1

// -------------------- LCD 함수 --------------------
void lcdCommand(uint8_t command)
{
    uint8_t high_nibble, low_nibble;
    uint8_t i2c_buffer[4];
    high_nibble = command & 0xf0;
    low_nibble = (command << 4) & 0xf0;
    i2c_buffer[0] = high_nibble | 0x04 | 0x08; 
    i2c_buffer[1] = high_nibble | 0x00 | 0x08; 
    i2c_buffer[2] = low_nibble | 0x04 | 0x08; 
    i2c_buffer[3] = low_nibble | 0x00 | 0x08; 
    XIic_Send(IIC2_ADDR, 0x27, i2c_buffer, 4, XIIC_STOP);
}

void lcdData(uint8_t data)
{
    uint8_t high_nibble, low_nibble;
    uint8_t i2c_buffer[4];
    high_nibble = data & 0xf0;
    low_nibble = (data << 4) & 0xf0;
    i2c_buffer[0] = high_nibble | 0x05 | 0x08;
    i2c_buffer[1] = high_nibble | 0x01 | 0x08;
    i2c_buffer[2] = low_nibble | 0x05 | 0x08;
    i2c_buffer[3] = low_nibble | 0x01 | 0x08;
    XIic_Send(IIC2_ADDR, 0x27, i2c_buffer, 4, XIIC_STOP);
}

void lcdInit()
{
    msleep(50);
    lcdCommand(0x33); msleep(5);
    lcdCommand(0x32); msleep(5);
    lcdCommand(0x28); msleep(5);
    lcdCommand(0x0C); msleep(5);
    lcdCommand(0x06); msleep(5);
    lcdCommand(0x01); msleep(2);
}

void lcdString(char *str)
{
    while (*str) lcdData(*str++);
}

void moveCursor(uint8_t row, uint8_t col)
{
    lcdCommand(0x80 | row << 6 | col);
}

// -------------------- 메인 --------------------
int main()
{
    init_platform();
    print("Hello World\n\r");
    print("Successfully ran Hello World application");

    XGpio btn_instance;
    XGpio_Initialize(&btn_instance, BTN_ADDR);
    XGpio_SetDataDirection(&btn_instance, BTN_CHANNEL, 0b1111);

    XIic iic_instance;
    XIic_Initialize(&iic_instance, IIC2_ADDR);

    volatile unsigned int* stopwatch_instance = (volatile unsigned int*) STOP_WATCH_ADDR;

    uint32_t btn_data = 0;
    uint32_t prev_btn_state = 0;
    int is_running = 0;  

    // 랩 타임 저장 변수
    int lap_time_min = 0;
    int lap_time_sec = 0;
    int lap_time_csec = 0;
    uint32_t lap_cnt = 0;

    lcdInit();
    lcdString("00:00:00");

    while (1) {
        btn_data = XGpio_DiscreteRead(&btn_instance, BTN_CHANNEL); 

        // -------------------- 버튼 처리 --------------------
        if (btn_data != 0 && prev_btn_state == 0) {
            switch (btn_data) {
                case 1:  // 스타트/스탑 토글
                    is_running = !is_running;
                    break;

                case 2:  // 랩 버튼
                    stopwatch_instance[0] = 2;  // lap_btn 활성화
                    msleep(10);
                    stopwatch_instance[0] = 0;

                    // 현재 시간 저장
                    lap_time_min  = stopwatch_instance[5];
                    lap_time_sec  = stopwatch_instance[1];
                    lap_time_csec = stopwatch_instance[2];

                    // 랩 카운트 0→1→0 순환
                    lap_cnt = (lap_cnt + 1) % 2;
                    break;

                case 4:  // 클리어(리셋)
                    stopwatch_instance[0] = 4;  // clear_btn 활성화
                    msleep(10);
                    stopwatch_instance[0] = 0;

                    // 모든 변수 초기화
                    lap_time_min = lap_time_sec = lap_time_csec = 0;
                    is_running = 0;
                    lap_cnt = 0;

                    // LCD 초기화
                    moveCursor(0, 0);
                    lcdString("00:00:00");
                    moveCursor(1, 0);
                    lcdString("        ");
                    moveCursor(1, 8);
                    lcdString("        ");
                    break;

                case 8:  // 미사용
                    break;
            }
            msleep(1); // 디바운싱
        }
        prev_btn_state = btn_data;

        // -------------------- 시간 동작 반영 --------------------
        stopwatch_instance[0] = is_running;

        // -------------------- 현재 시간 LCD 출력 --------------------
        moveCursor(0, 0);
        lcdData(stopwatch_instance[5] / 10 % 10 + '0'); // 분 십자리
        lcdData(stopwatch_instance[5] % 10 + '0');      // 분 일자리
        lcdData(':');
        lcdData(stopwatch_instance[1] / 10 % 10 + '0'); // 초 십자리
        lcdData(stopwatch_instance[1] % 10 + '0');      // 초 일자리
        lcdData(':');
        lcdData(stopwatch_instance[2] / 10 % 10 + '0'); // 센트초 십자리
        lcdData(stopwatch_instance[2] % 10 + '0');      // 센트초 일자리

        // -------------------- 랩 타임 LCD 출력 --------------------
        if ((lap_time_min > 0 || lap_time_sec > 0 || lap_time_csec > 0)) {
            if (lap_cnt == 0) {
                moveCursor(1, 0); // 왼쪽
            } else if (lap_cnt == 1) {
                moveCursor(1, 8); // 오른쪽
            }
            lcdData(lap_time_min / 10 % 10 + '0');
            lcdData(lap_time_min % 10 + '0');
            lcdData(':');
            lcdData(lap_time_sec / 10 % 10 + '0');
            lcdData(lap_time_sec % 10 + '0');
            lcdData(':');
            lcdData(lap_time_csec / 10 % 10 + '0');
            lcdData(lap_time_csec % 10 + '0');
        }

        msleep(1);
    }

    cleanup_platform();
    return 0;
}
