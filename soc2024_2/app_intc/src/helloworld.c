#include <stdio.h>
#include <sys/_intsup.h>
#include <xintc_l.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"
#include "xgpio.h"
#include "xintc.h"
#include "xuartlite.h"
#include "xil_exception.h"

#define UART_ADDR XPAR_AXI_UARTLITE_0_BASEADDR
#define INTC_ADDR XPAR_MICROBLAZE_RISCV_0_AXI_INTC_BASEADDR
#define UART_VEC_ID XPAR_FABRIC_AXI_UARTLITE_0_INTR 
#define BTN_ADDR XPAR_AXI_GPIO_0_BASEADDR
#define BTN_VECT_ID XPAR_FABRIC_XGPIO_0_INTR 
#define SW_CHANNEL 1

XGpio btn_instance;
XGpio intc_instance;
XUartLite uart_instance;


void btn_isr(void *CallBackRef);
void RecvHandler(void *CallBackRef, unsigned int EventData);
void SandHandler(void *CallBackRef, unsigned int EventData);
int main()
{
    
    init_platform();

    print("Hello World\n\r");
    print("Successfully ran Hello World application");
XUartLite_Initialize(&uart_instance,  UART_ADDR);
XGpio_Initialize(&btn_instance, BTN_ADDR);                    // 구조체 내부 XPAR_AXI_GPIO_LED_SW_BASEADDR 연결 
XIntc_Initialize(&intc_instance, INTC_ADDR);
XGpio_SetDataDirection(&btn_instance, SW_CHANNEL, 0xffff);   //입력신호 초기화(구조체 선언, 포트채널선언, 비트마스킹)
XIntc_Connect(&intc_instance, UART_VEC_ID, (XInterruptHandler)XUartLite_InterruptHandler, (void*)&uart_instance);
XIntc_Connect(&intc_instance, BTN_VECT_ID, (XInterruptHandler)btn_isr, (void*)&btn_instance);

XIntc_Enable(&intc_instance, UART_VEC_ID);
XIntc_Enable(&intc_instance, BTN_VECT_ID);

XIntc_Start(&intc_instance, XIN_REAL_MODE);
u32 data;  // 스위치 데이터 저장 변수

XGpio_InterruptEnable(&btn_instance, SW_CHANNEL);
XGpio_InterruptGlobalEnable(&btn_instance);
XUartLite_SetRecvHandler(&uart_instance, RecvHandler, &uart_instance);
XUartLite_SetSendHandler(&uart_instance, SandHandler, &uart_instance);

XUartLite_EnableInterrupt(&uart_instance);
Xil_ExceptionInit();
Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XIntc_InterruptHandler,&intc_instance);

Xil_ExceptionEnable();
    while (1) {
    
    //     sleep(1);
    //    data = XGpio_DiscreteRead(&btn_instance, SW_CHANNEL); //입력신호 읽음(구조체 선언, 포트채널선언)
      
       
    //     printf("switch : %x\n", data);  // F 부동소수점 계산할떄 주로 쓰임. X 16진수까지 계산가능
      


        
    }

    cleanup_platform();
    return 0;
}



void btn_isr(void *CallBackRef)
{
    unsigned int btn_value;
printf("button interrupt\n");
XGpio *Gpio_ptr = (XGpio *)CallBackRef;
btn_value=XGpio_DiscreteRead(Gpio_ptr, SW_CHANNEL);
XGpio_InterruptClear(Gpio_ptr, SW_CHANNEL);
if(btn_value == 1) 
{printf("btn 0 rising\n");}

else if (btn_value == 2) 
 {
    printf("btn 1 fulling\n");
 }

 else if (btn_value == 0) 
 {
    printf("btn 1 fulling\n");
 }


}


void RecvHandler(void *CallBackRef, unsigned int EventData)
{
      u8 rxdata;
    XUartLite_Recv(CallBackRef ,&rxdata, 1);
    printf("recv %c\n", rxdata);
return;

}
void SandHandler(void *CallBackRef, unsigned int EventData)
{
   
return;
}