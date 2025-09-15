# 2025-09-13T14:10:58.750096
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

platform = client.create_platform_component(name = "platform_adc_uart_new_bod115200",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_pwm_led_wrapper_new_bd115200.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_adc_uart_bode115200",platform = "$COMPONENT_LOCATION/../platform_adc_uart_new_bod115200/export/platform_adc_uart_new_bod115200/platform_adc_uart_new_bod115200.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_adc_uart_new_bod115200")
status = platform.build()

comp = client.get_component(name="app_adc_uart_bode115200")
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

platform = client.create_platform_component(name = "platform_adc_bode_uart_38400",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_pwm_led_wrapper_adc_uart_bod38400.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_adc_new_bod_38400",platform = "$COMPONENT_LOCATION/../platform_adc_bode_uart_38400/export/platform_adc_bode_uart_38400/platform_adc_bode_uart_38400.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_adc_bode_uart_38400")
status = platform.build()

comp = client.get_component(name="app_adc_new_bod_38400")
comp.build()

platform = client.get_component(name="platform_adc_uart_tap")
status = platform.build()

comp = client.get_component(name="app_adc_uart_tap")
comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_adc_uart_new_bod115200")
status = platform.build()

comp = client.get_component(name="app_adc_uart_bode115200")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_adc_bode_uart_38400")
status = platform.build()

comp = client.get_component(name="app_adc_new_bod_38400")
comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_adc_uart_new_bod115200")
status = platform.build()

comp = client.get_component(name="app_adc_uart_bode115200")
comp.build()

platform = client.get_component(name="platform_adc_uart_tap")
status = platform.build()

comp = client.get_component(name="app_adc_uart_tap")
comp.build()

platform = client.get_component(name="platform_adc_uart_new_bod115200")
status = platform.build()

comp = client.get_component(name="app_adc_uart_bode115200")
comp.build()

platform = client.get_component(name="platform_adc_bode_uart_38400")
status = platform.build()

comp = client.get_component(name="app_adc_new_bod_38400")
comp.build()

platform = client.get_component(name="platform_adc_uart_tap")
status = platform.build()

comp = client.get_component(name="app_adc_uart_tap")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_adc_bode_uart_38400")
status = platform.build()

comp = client.get_component(name="app_adc_new_bod_38400")
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

platform = client.create_platform_component(name = "platform_adc_uart_bod19200",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_pwm_led_wrapper_bod119200.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_adc_uart_19200",platform = "$COMPONENT_LOCATION/../platform_adc_uart_bod19200/export/platform_adc_uart_bod19200/platform_adc_uart_bod19200.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_adc_uart_bod19200")
status = platform.build()

comp = client.get_component(name="app_adc_uart_19200")
comp.build()

platform = client.get_component(name="platform_adc_uart_new_bod115200")
status = platform.build()

comp = client.get_component(name="app_adc_uart_bode115200")
comp.build()

vitis.dispose()

