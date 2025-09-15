#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"

#define MYIP_BASEADDR XPAR_MYIP_ADC_NEW_0_BASEADDR
#define PC_UART_BASEADDR XPAR_AXI_UARTLITE_0_BASEADDR      // PC 디버그용
#define BLUETOOTH_UART_BASEADDR XPAR_AXI_UARTLITE_1_BASEADDR // 블루투스용

// 블루투스 UART 송신 (한 글자)
int bluetooth_uart_send_char(char c) {
    int timeout = 100000;
    while (Xil_In32(BLUETOOTH_UART_BASEADDR + 0x8) & 0x8) {
        if(--timeout <= 0) return -1;
        usleep(1);
    }
    Xil_Out8(BLUETOOTH_UART_BASEADDR + 0x4, c);

    // 9600bps라면 한 바이트 전송에 약 1ms 필요 → 1ms만 대기
    usleep(1000); 
    return 0;
}

// 블루투스 UART 송신 (문자열)
int bluetooth_uart_send_string(char* str) {
    while (*str) {
        if(bluetooth_uart_send_char(*str++) != 0) return -1;
    }
    return 0;
}

int main() {
    init_platform();
    
    // PC 디버그 콘솔 출력
    print("=== Basys3 Joystick X1 Test ===\n\r");
    print("PC Debug Console Active\n\r");
    print("Bluetooth UART Active\n\r");
    
    u32 adc_raw = 0;
    char buf[16];
    int loop_counter = 0;
    
    while (1) {
        // ADC 읽기 (X1 값만, 12비트 → 0~4095)
        adc_raw = Xil_In32(MYIP_BASEADDR + 0x0) & 0xFFF;
        loop_counter++;
        
        if(loop_counter >= 1000) { // 약 100ms마다 전송
            // 숫자만 전송 (예: "1234\n")
            int len = sprintf(buf, "%u\n", adc_raw);
            for(int i=0; i<len; i++) {
                bluetooth_uart_send_char(buf[i]);
            }
            
            // PC 디버그 로그
            xil_printf("DEBUG: Sent to Bluetooth: %u\r\n", adc_raw);
            
            loop_counter = 0;
        }
        usleep(100);
    }
    
    cleanup_platform();
    return 0;
}
