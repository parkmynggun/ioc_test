# 2025-09-15T14:18:17.098523
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

platform = client.get_component(name="platform_adc_uart_tap")
status = platform.build()

comp = client.get_component(name="app_adc_uart_tap")
comp.build()

status = platform.build()

comp.build()

platform = client.create_platform_component(name = "platform_adc_pull_up_bd9600",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_pwm_led_wrapper_pull_up_9600.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_adc_pullup_bd9600",platform = "$COMPONENT_LOCATION/../platform_adc_pull_up_bd9600/export/platform_adc_pull_up_bd9600/platform_adc_pull_up_bd9600.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_adc_pull_up_bd9600")
status = platform.build()

comp = client.get_component(name="app_adc_pullup_bd9600")
comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_adc_uart_tap")
status = platform.build()

comp = client.get_component(name="app_adc_uart_tap")
comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_adc_bode_uart_38400")
status = platform.build()

comp = client.get_component(name="app_adc_new_bod_38400")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

