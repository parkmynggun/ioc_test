#include <stdio.h>
#include <xintc_l.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"
#include "xgpio.h"
#include "xintc.h"
#include "xuartlite.h"
#include "xil_exception.h"
#include "xiic.h"

#define UART_ADDR       XPAR_AXI_UARTLITE_0_BASEADDR
#define INTC_ADDR       XPAR_MICROBLAZE_RISCV_0_AXI_INTC_BASEADDR
#define UART_VEC_ID     XPAR_FABRIC_AXI_UARTLITE_0_INTR 
#define BTN_ADDR        XPAR_AXI_GPIO_0_BASEADDR
#define BTN_VECT_ID     XPAR_FABRIC_XGPIO_0_INTR
#define IIC2_ADDR       XPAR_AXI_IIC_0_BASEADDR
#define STOP_WATCH_ADDR XPAR_MYIP_STOP_WATCH_0_BASEADDR
#define SW_CHANNEL      1   // 버튼 채널

XGpio btn_instance;
XIntc intc_instance;  
XUartLite uart_instance;

// ===================== 전역 변수 =====================
volatile unsigned int* stopwatch_instance;
volatile int is_running = 0;
volatile int lap_time_min = 0;
volatile int lap_time_sec = 0;
volatile int lap_time_csec = 0;
volatile uint32_t lap_cnt = 0;

// ISR ↔ 메인 루프 통신용
volatile unsigned int btn_event = 0;

// ===================== LCD 함수 =====================
void lcdCommand(uint8_t command) {
    uint8_t high_nibble = command & 0xf0;
    uint8_t low_nibble  = (command << 4) & 0xf0;
    uint8_t buf[4] = {
        high_nibble | 0x0C, high_nibble | 0x08,
        low_nibble  | 0x0C, low_nibble  | 0x08
    };
    XIic_Send(IIC2_ADDR, 0x27, buf, 4, XIIC_STOP);
}

void lcdData(uint8_t data) {
    uint8_t high_nibble = data & 0xf0;
    uint8_t low_nibble  = (data << 4) & 0xf0;
    uint8_t buf[4] = {
        high_nibble | 0x0D, high_nibble | 0x09,
        low_nibble  | 0x0D, low_nibble  | 0x09
    };
    XIic_Send(IIC2_ADDR, 0x27, buf, 4, XIIC_STOP);
}

void lcdInit() {
    msleep(50);
    lcdCommand(0x33); msleep(5);
    lcdCommand(0x32); msleep(5);
    lcdCommand(0x28); msleep(5);
    lcdCommand(0x0C); msleep(5);
    lcdCommand(0x06); msleep(5);
    lcdCommand(0x01); msleep(2);
}

void lcdString(char *str) {
    while (*str) lcdData(*str++);
}

void moveCursor(uint8_t row, uint8_t col) {
    lcdCommand(0x80 | (row << 6) | col);
}

// ===================== 버튼 ISR =====================
void btn_isr(void *CallBackRef) {
    XGpio *Gpio_ptr = (XGpio *)CallBackRef;
    u32 int_status = XGpio_InterruptGetStatus(Gpio_ptr);
    XGpio_InterruptClear(Gpio_ptr, int_status);

    unsigned int btn_value = XGpio_DiscreteRead(Gpio_ptr, SW_CHANNEL);
    if (btn_value != 0) btn_event = btn_value; // 이벤트 플래그
   if (btn_value == 0b0001) 
 {
    printf("btn 1 fulling\n");
 }
   else if (btn_value == 0b0010) 
 {
    printf("btn 2 fulling\n");
 }
   else if (btn_value == 0b0100) 
 {
    printf("btn 4 fulling\n");
 }
    else if (btn_value == 0b1000) 
 {
    printf("btn 8 fulling\n");
 }
}

// ===================== UART 처리 =====================
void process_uart_command(u8 cmd) {
    switch (cmd) {
        case 's': case 'S':
            is_running = !is_running;
            xil_printf("UART: Start/Stop toggled - %s\n\r", is_running ? "RUNNING" : "STOPPED");
            break;

        case 'l': case 'L':
            stopwatch_instance[0] = 2;  
            msleep(10);
            stopwatch_instance[0] = 0;
            lap_time_min  = stopwatch_instance[5];
            lap_time_sec  = stopwatch_instance[1];
            lap_time_csec = stopwatch_instance[2];
            lap_cnt = (lap_cnt + 1) % 2;
            xil_printf("UART: Lap time recorded - %02d:%02d:%02d\n\r", lap_time_min, lap_time_sec, lap_time_csec);
            break;

        case 'r': case 'R':
            stopwatch_instance[0] = 4;
            msleep(10);
            stopwatch_instance[0] = 0;
            lap_time_min = lap_time_sec = lap_time_csec = 0;
            is_running = 0;
            lap_cnt = 0;
            moveCursor(0, 0); lcdString("00:00:00");
            moveCursor(1, 0); lcdString("        ");
            moveCursor(1, 8); lcdString("        ");
            xil_printf("UART: Stopwatch reset\n\r");
            break;

        default:
            xil_printf("UART: Unknown command '%c'\n\r", cmd);
            break;
    }
}

void RecvHandler(void *CallBackRef, unsigned int EventData) {
    u8 rxdata;
    XUartLite_Recv(CallBackRef, &rxdata, 1);
    process_uart_command(rxdata);
}

void SandHandler(void *CallBackRef, unsigned int EventData) {
    // 송신 완료 핸들러 (필요시)
}

// ===================== 메인 =====================
int main() {
    init_platform();
    xil_printf("Stopwatch System Initialized\n\r");

    XUartLite_Initialize(&uart_instance, UART_ADDR);
    XGpio_Initialize(&btn_instance, BTN_ADDR);
    XIntc_Initialize(&intc_instance, INTC_ADDR);
    XGpio_SetDataDirection(&btn_instance, SW_CHANNEL, 0xFFFF); // 입력

    XIntc_Connect(&intc_instance, UART_VEC_ID, (XInterruptHandler)XUartLite_InterruptHandler, (void*)&uart_instance);
    XIntc_Connect(&intc_instance, BTN_VECT_ID, (XInterruptHandler)btn_isr, (void*)&btn_instance);
    XIntc_Enable(&intc_instance, UART_VEC_ID);
    XIntc_Enable(&intc_instance, BTN_VECT_ID);
    XIntc_Start(&intc_instance, XIN_REAL_MODE);

    XGpio_InterruptEnable(&btn_instance, 0xFFFF);
    XGpio_InterruptGlobalEnable(&btn_instance);

    XUartLite_SetRecvHandler(&uart_instance, RecvHandler, &uart_instance);
    XUartLite_SetSendHandler(&uart_instance, SandHandler, &uart_instance);
    XUartLite_EnableInterrupt(&uart_instance);

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, 
                                 (Xil_ExceptionHandler)XIntc_InterruptHandler, 
                                 &intc_instance);
    Xil_ExceptionEnable();

    stopwatch_instance = (volatile unsigned int*) STOP_WATCH_ADDR;

    lcdInit();
    lcdString("00:00:00");

    while (1) {
        stopwatch_instance[0] = is_running;

        // -------------------- 버튼 이벤트 처리 --------------------
        if (btn_event != 0) {
            switch (btn_event) {
                case 1: is_running = !is_running; break;
                case 2: 
                    stopwatch_instance[0] = 2;  
                    msleep(1);
                    stopwatch_instance[0] = 0;
                    lap_time_min  = stopwatch_instance[5];
                    lap_time_sec  = stopwatch_instance[1];
                    lap_time_csec = stopwatch_instance[2];
                    lap_cnt = (lap_cnt + 1) % 2;
                    break;
                case 8:
                    stopwatch_instance[0] = 4;  
                    msleep(1);
                    stopwatch_instance[0] = 0;
                    lap_time_min = lap_time_sec = lap_time_csec = 0;
                    is_running = 0;
                    lap_cnt = 0;
                    moveCursor(0, 0); lcdString("00:00:00");
                    moveCursor(1, 0); lcdString("        ");
                    moveCursor(1, 8); lcdString("        ");
                    break;
            }
            btn_event = 0; // 초기화
        }

        // -------------------- 현재 시간 LCD 출력 --------------------
        moveCursor(0, 0);
        lcdData(stopwatch_instance[5] / 10 % 10 + '0');
        lcdData(stopwatch_instance[5] % 10 + '0');
        lcdData(':');
        lcdData(stopwatch_instance[1] / 10 % 10 + '0');
        lcdData(stopwatch_instance[1] % 10 + '0');
        lcdData(':');
        lcdData(stopwatch_instance[2] / 10 % 10 + '0');
        lcdData(stopwatch_instance[2] % 10 + '0');

        // -------------------- 랩 타임 LCD 출력 --------------------
        if (lap_time_min > 0 || lap_time_sec > 0 || lap_time_csec > 0) {
            if (lap_cnt == 0) moveCursor(1, 0);
            else if (lap_cnt == 1) moveCursor(1, 8);
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
