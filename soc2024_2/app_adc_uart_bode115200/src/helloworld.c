#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"

#define MYIP_BASEADDR XPAR_MYIP_ADC_NEW_0_BASEADDR
#define UART_BASEADDR XPAR_AXI_UARTLITE_1_BASEADDR // HC-05 연결된 UART Lite

uint32_t adc_scaled[4] = {0,0,0,0}; // 보정된 값 (0..4095)

// UART 송신 (한 글자) - 타임아웃 추가
int simple_uart_send_char(char c) {
    int timeout = 10000;  // 타임아웃 카운터
    while (Xil_In32(UART_BASEADDR + 0x8) & 0x8) { 
        if(--timeout <= 0) {
            print("UART TX timeout!\r\n");
            return -1;  // 타임아웃 에러
        }
    }
    Xil_Out8(UART_BASEADDR + 0x4, c);
    return 0;
}

// UART 송신 (문자열) - 에러 처리 추가
int simple_uart_send_string(char* str) {
    while (*str) {
        if(simple_uart_send_char(*str++) != 0) {
            return -1;  // 에러 발생
        }
    }
    return 0;
}

// ADC 보정 함수 - 범위 검증 강화
uint32_t remap_adc(uint32_t raw, uint32_t raw_min, uint32_t raw_max) {
    if (raw_max <= raw_min) return 0;
    if (raw <= raw_min) return 0;
    if (raw >= raw_max) return 4095;
    
    uint64_t numer = (uint64_t)(raw - raw_min) * 4095;
    uint32_t denom = raw_max - raw_min;
    uint32_t result = (uint32_t)(numer / denom);
    
    // 최종 범위 체크
    if(result > 4095) result = 4095;
    return result;
}

int main() {
    init_platform();
    print("=== Basys3 Joystick to Bluetooth System ===\n\r");
    print("DEBUG: System initialized\n\r");
    
    // 초기 연결 테스트
    if(simple_uart_send_string("INIT:Basys3_Ready\r\n") == 0) {
        print("DEBUG: Initial UART test OK\r\n");
    } else {
        print("ERROR: Initial UART test failed!\r\n");
    }

    // ADC 보정 상수들
    const uint32_t RAW_MIN[4] = {8, 8, 7, 7};
    const uint32_t RAW_MAX[4] = {3000, 3000, 3000, 3000};
    
    // 조이스틱 중립값 (0-4095 범위에서)
    const uint32_t NEUTRAL[4] = {2048, 2048, 2048, 2048};  // 이론적 중립값
    const uint32_t DEADZONE = 200;  // 데드존 (중립 ±200)
    
    u32 adc_raw[4];
    u32 adc_prev[4] = {0,0,0,0};
    int loop_counter = 0;
    int idle_counter = 0;  // 중립 상태 카운터
    char uart_buf[64];
    
    uint32_t total_sends = 0;
    uint32_t failed_sends = 0;

    while (1) {
        // ADC 읽기
        adc_raw[0] = Xil_In32(MYIP_BASEADDR + 0x0) & 0xFFF;
        adc_raw[1] = Xil_In32(MYIP_BASEADDR + 0x4) & 0xFFF;
        adc_raw[2] = Xil_In32(MYIP_BASEADDR + 0x8) & 0xFFF;
        adc_raw[3] = Xil_In32(MYIP_BASEADDR + 0xC) & 0xFFF;

        // 보정 (0-4095 범위 그대로 유지)
        for (int i = 0; i < 4; i++) {
            adc_scaled[i] = remap_adc(adc_raw[i], RAW_MIN[i], RAW_MAX[i]);
            if(adc_scaled[i] > 4095) adc_scaled[i] = 4095;
        }

        loop_counter++;
        
        // 1000 루프마다 체크 (약 100ms)
        if (loop_counter >= 1000) {
            uint8_t is_active = 0;
            
            // 데드존 밖의 움직임이 있는지 체크
            for(int i = 0; i < 4; i++) {
                int diff = abs((int)adc_scaled[i] - (int)NEUTRAL[i]);
                if(diff > DEADZONE) {
                    is_active = 1;
                    break;
                }
            }
            
            if(is_active) {
                // 유의미한 움직임 → 각 축을 개별 전송
                idle_counter = 0;
                
                total_sends++;
                
                // X1 전송
                char x1_msg[16];
                snprintf(x1_msg, sizeof(x1_msg), "X1:%u\r\n", adc_scaled[0]);
                simple_uart_send_string(x1_msg);
                usleep(5000); // 5ms 대기
                
                // Y1 전송
                char y1_msg[16];
                snprintf(y1_msg, sizeof(y1_msg), "Y1:%u\r\n", adc_scaled[1]);
                simple_uart_send_string(y1_msg);
                usleep(5000);
                
                // X2 전송
                char x2_msg[16];
                snprintf(x2_msg, sizeof(x2_msg), "X2:%u\r\n", adc_scaled[2]);
                simple_uart_send_string(x2_msg);
                usleep(5000);
                
                // Y2 전송
                char y2_msg[16];
                snprintf(y2_msg, sizeof(y2_msg), "Y2:%u\r\n", adc_scaled[3]);
                simple_uart_send_string(y2_msg);
                usleep(5000);
                
                // 완료 신호
                simple_uart_send_string("END\r\n");
                
                for(int i = 0; i < 4; i++) adc_prev[i] = adc_scaled[i];
                xil_printf("SENT: X1=%u,Y1=%u,X2=%u,Y2=%u (split)\r\n", 
                           adc_scaled[0], adc_scaled[1], 
                           adc_scaled[2], adc_scaled[3]);
                
            } else {
                // 중립 상태
                idle_counter++;
                
                // 중립 상태가 되었을 때 한 번만 전송
                if(idle_counter == 1) {
                    total_sends++;
                    simple_uart_send_string("NEUTRAL\r\n");
                    print("SENT: Neutral\r\n");
                }
            }
            
            // 통계 출력 (50번마다)
            if(total_sends > 0 && total_sends % 50 == 0) {
                xil_printf("Stats: Sent=%d, Failed=%d, Success Rate=%d%%\r\n",
                           total_sends, failed_sends, 
                           ((total_sends - failed_sends) * 100) / total_sends);
            }
            
            loop_counter = 0;
        }

        // 지연시간
        usleep(100);
    }

    cleanup_platform();
    return 0;
}