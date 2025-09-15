#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"

#define MYIP_BASEADDR XPAR_MYIP_ADC_NEW_0_BASEADDR
#define UART_BASEADDR XPAR_AXI_UARTLITE_1_BASEADDR // HC-05 연결 UART Lite

uint32_t adc_scaled[4] = {0,0,0,0};

// UART 송신 (한 글자)
int simple_uart_send_char(char c) {
    int timeout = 10000;
    while (Xil_In32(UART_BASEADDR + 0x8) & 0x8) {
        if(--timeout <= 0) {
            xil_printf("UART TX timeout!\r\n");
            return -1;
        }
    }
    Xil_Out8(UART_BASEADDR + 0x4, c);
    return 0;
}

// UART 문자열 전송
int simple_uart_send_string(const char* str) {
    while(*str) {
        if(simple_uart_send_char(*str++) != 0) return -1;
    }
    return 0;
}

// ADC 보정
uint32_t remap_adc(uint32_t raw, uint32_t raw_min, uint32_t raw_max) {
    if(raw_max <= raw_min) return 0;
    if(raw <= raw_min) return 0;
    if(raw >= raw_max) return 4095;

    uint64_t numer = (uint64_t)(raw - raw_min) * 4095;
    uint32_t denom = raw_max - raw_min;
    uint32_t result = (uint32_t)(numer / denom);
    if(result > 4095) result = 4095;
    return result;
}

// 조이스틱 데이터 전송
int send_joystick_data(uint32_t *vals) {
    char buf[128];
    int len = snprintf(buf, sizeof(buf),
                       "X1:%u\r\nY1:%u\r\nX2:%u\r\nY2:%u\r\nEND\r\n",
                       vals[0], vals[1], vals[2], vals[3]);
    return simple_uart_send_string(buf);
}

// 중립값 전송
int send_neutral(void) {
    return simple_uart_send_string("NEUTRAL\r\n");
}

int main() {
    init_platform();
    print("=== Basys3 Joystick to Bluetooth System ===\n\r");

    // 초기 연결 테스트
    if(simple_uart_send_string("INIT:Basys3_Ready\r\n") == 0) {
        print("DEBUG: UART OK\r\n");
    } else {
        print("ERROR: UART failed!\r\n");
    }

    // ADC 보정 상수
    const uint32_t RAW_MIN[4] = {8, 8, 7, 7};
    const uint32_t RAW_MAX[4] = {3000, 3000, 3000, 3000};
    const uint32_t NEUTRAL[4] = {2048, 2048, 2048, 2048};
    const uint32_t DEADZONE = 200;

    u32 adc_raw[4];
    int idle_counter = 0;

    while(1) {
        // ADC 읽기
        for(int i=0;i<4;i++) {
            adc_raw[i] = Xil_In32(MYIP_BASEADDR + i*4) & 0xFFF;
            adc_scaled[i] = remap_adc(adc_raw[i], RAW_MIN[i], RAW_MAX[i]);
        }

        // 데드존 체크
        int active = 0;
        for(int i=0;i<4;i++) {
            if(abs((int)adc_scaled[i] - (int)NEUTRAL[i]) > DEADZONE) {
                active = 1;
                break;
            }
        }

        if(active) {
            idle_counter = 0;
            send_joystick_data(adc_scaled);
            xil_printf("SENT: X1=%u,Y1=%u,X2=%u,Y2=%u\r\n",
                       adc_scaled[0], adc_scaled[1],
                       adc_scaled[2], adc_scaled[3]);
        } else {
            idle_counter++;
            if(idle_counter == 1) send_neutral();
        }

        usleep(1000); // 1ms
    }

    cleanup_platform();
    return 0;
}
