# 2025-09-16T09:45:42.034413
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

platform = client.get_component(name="platform_adc_adc_new_btn_wp")
status = platform.build()

comp = client.get_component(name="app_adc_new_new_btn111111111")
comp.build()

platform = client.create_platform_component(name = "platform_adc_btn_uart_bd38400",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_pwm_led_wrapper_adc_uart_btn_lcd.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_adc_btn_lcd_uart_bd38400",platform = "$COMPONENT_LOCATION/../platform_adc_btn_uart_bd38400/export/platform_adc_btn_uart_bd38400/platform_adc_btn_uart_bd38400.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_adc_btn_uart_bd38400")
status = platform.build()

comp = client.get_component(name="app_adc_btn_lcd_uart_bd38400")
comp.build()

platform = client.get_component(name="platform_adc_adc_new_btn_wp")
status = platform.build()

comp = client.get_component(name="app_adc_new_new_btn111111111")
comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_adc_btn_uart_bd38400")
status = platform.build()

comp = client.get_component(name="app_adc_btn_lcd_uart_bd38400")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

