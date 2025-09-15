# 2025-09-12T09:22:44.981673
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

platform = client.get_component(name="platform_adc_adc_new_btn_wp")
status = platform.build()

comp = client.get_component(name="app_adc_new_new_btn111111111")
comp.build()

platform = client.create_platform_component(name = "platform_adc_uart_tap",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_pwm_led_wrapper_uart_tap.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_adc_uart_tap",platform = "$COMPONENT_LOCATION/../platform_adc_uart_tap/export/platform_adc_uart_tap/platform_adc_uart_tap.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_adc_uart_tap")
status = platform.build()

comp = client.get_component(name="app_adc_uart_tap")
comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_adc_adc_new_btn_wp")
status = platform.build()

comp = client.get_component(name="app_adc_new_new_btn111111111")
comp.build()

platform = client.get_component(name="platform_pwm_rgb")
status = platform.build()

comp = client.get_component(name="app_pwm_rgb")
comp.build()

platform = client.get_component(name="platform_adc_adc_new_btn_wp")
status = platform.build()

comp = client.get_component(name="app_adc_new_new_btn111111111")
comp.build()

platform = client.get_component(name="platform_adc_uart_tap")
status = platform.build()

comp = client.get_component(name="app_adc_uart_tap")
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

platform = client.create_platform_component(name = "platform_intc",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_intc_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_intc",platform = "$COMPONENT_LOCATION/../platform_intc/export/platform_intc/platform_intc.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_intc")
status = platform.build()

comp = client.get_component(name="app_intc")
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

platform = client.create_platform_component(name = "platform_stop_watch_intc",hw_design = "$COMPONENT_LOCATION/../../test_18/stop_watch_intc_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_stop_watch_intc",platform = "$COMPONENT_LOCATION/../platform_stop_watch_intc/export/platform_stop_watch_intc/platform_stop_watch_intc.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_stop_watch_intc")
status = platform.build()

comp = client.get_component(name="app_stop_watch_intc")
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

platform = client.get_component(name="platform_led_sw")
status = platform.build()

comp = client.get_component(name="app_led_sw")
comp.build()

platform = client.get_component(name="platform_stop_watch_intc")
status = platform.build()

comp = client.get_component(name="app_stop_watch_intc")
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

vitis.dispose()

