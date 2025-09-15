#include "xil_io.h"
#include "xparameters.h"
#include <unistd.h>

#define SYS_CLK_FREQ 100000000
#define PWM_BASEADDR XPAR_MYIP_PWM_0_BASEADDR
#define REG_DUTY     0x0
#define REG_TEMP     0x4
#define REG_DUTYSTEP 0x8

void pwm_set(uint32_t duty, uint32_t pwm_freq, uint32_t duty_step) {
    uint32_t temp = SYS_CLK_FREQ / pwm_freq / duty_step / 2;
    Xil_Out32(PWM_BASEADDR + REG_DUTY, duty);
    Xil_Out32(PWM_BASEADDR + REG_TEMP, temp);
    Xil_Out32(PWM_BASEADDR + REG_DUTYSTEP, duty_step);
}

int main() {
    uint32_t duty = 0;
    uint8_t inc_flag = 1;
    uint32_t duty_step = 1000;

    while (1) {
        pwm_set(duty, 1000, duty_step);

        if (inc_flag) {
            if (duty >= duty_step)
                inc_flag = 0;
            else
                duty += 10;
        } else {
            if (duty <= 0)
                inc_flag = 1;
            else
                duty -= 10;
        }

        usleep(20000); // 20ms
    }

    return 0;
}
