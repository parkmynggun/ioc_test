#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"

#define DHT11_ADDR XPAR_MYIP_DHT11_TAP_TAP11_0_BASEADDR
#define FND_ADDR XPAR_MYIP_FND_0_BASEADDR
#define LCD_ADDR XPAR_MYIP_LCD_0_BASEADDR

// LCD 제어 함수들
void lcd_wait_busy(volatile unsigned int *lcd) {
    // busy 신호가 해제될 때까지 대기
    while(lcd[4] == 1) {
        usleep(1000); // 1ms 대기
    }
}

void lcd_send_command(volatile unsigned int *lcd, unsigned char cmd) {
    lcd_wait_busy(lcd);
    lcd[0] = 0x27;      // LCD I2C 주소
    lcd[1] = cmd;       // 명령
    lcd[3] = 0;         // rs=0 (명령모드)
    lcd[2] = 1;         // send 시작
}

void lcd_send_data(volatile unsigned int *lcd, unsigned char data) {
    lcd_wait_busy(lcd);
    lcd[0] = 0x27;      // LCD I2C 주소
    lcd[1] = data;      // 데이터
    lcd[3] = 1;         // rs=1 (데이터모드)
    lcd[2] = 1;         // send 시작
}

void lcd_init(volatile unsigned int *lcd) {
    // 초기화 시퀀스
    unsigned char lcd_init_seq[6] = {0x33, 0x32, 0x28, 0x0C, 0x01, 0x06};
    
    // 초기화 전 충분한 대기
    sleep(1);
    
    for(int i = 0; i < 6; i++) {
        lcd_send_command(lcd, lcd_init_seq[i]);
        if(i == 4) msleep(1); // Clear display 명령 후 추가 대기
        else usleep(50000); // 50ms 대기
    }
    
    // 초기화 완료 후 대기
    sleep(1);
}

void lcd_set_cursor(volatile unsigned int *lcd, int row, int col) {
    unsigned char address;
    if(row == 0) address = 0x80 + col;  // 첫 번째 줄
    else address = 0xC0 + col;          // 두 번째 줄
    lcd_send_command(lcd, address);
}

void lcd_print_string(volatile unsigned int *lcd, char *str) {
    int i = 0;
    while(str[i] != '\0' && i < 16) {
        lcd_send_data(lcd, str[i]);
        i++;
    }
}

void lcd_clear(volatile unsigned int *lcd) {
    lcd_send_command(lcd, 0x01); // Clear display
    sleep(1); // Clear 명령 후 충분한 대기
}

int main()
{
    init_platform();
    
    volatile unsigned int *dht11_instance = (volatile unsigned int*)DHT11_ADDR;
    volatile unsigned int *fnd_cntr = (volatile unsigned int *)FND_ADDR;
    volatile unsigned int *lcd = (volatile unsigned int *)LCD_ADDR;
    
    // FND 초기화
    fnd_cntr[0] = 0;
    fnd_cntr[1] = 0;
    
    // LCD 초기화
    printf("LCD 초기화 시작...\n");
    lcd_init(lcd);
    printf("LCD 초기화 완료!\n");
    
    uint32_t Humidity = 0;
    uint32_t Temperature = 0;
    
    while(1) {
        // DHT11 값 읽기
        Humidity = dht11_instance[0];
        Temperature = dht11_instance[1];
        
        printf("Temperature : %d\nHumidity : %d\n", Temperature, Humidity);
        
        // FND 출력 (온도십의자리, 온도일의자리, 습도십의자리, 습도일의자리)
        int fnd_val = (Temperature / 10) * 1000    // 온도 십의자리
                    + (Temperature % 10) * 100     // 온도 일의자리  
                    + (Humidity / 10) * 10         // 습도 십의자리
                    + (Humidity % 10) * 1;         // 습도 일의자리
        fnd_cntr[0] = fnd_val;
        
        // LCD 화면 지우기
        lcd_clear(lcd);
        
        // 첫 번째 줄에 온도 표시
        lcd_set_cursor(lcd, 0, 0);
        char temp_str[17];
        snprintf(temp_str, 17, "Temp: %2d C", Temperature);
        lcd_print_string(lcd, temp_str);
        
        // 두 번째 줄에 습도 표시
        lcd_set_cursor(lcd, 1, 0);
        char humi_str[17];
        snprintf(humi_str, 17, "Humi: %2d %%", Humidity);
        lcd_print_string(lcd, humi_str);
        
        // 2초 대기 후 다시 측정
        sleep(2);
    }
    
    cleanup_platform();
    return 0;
}