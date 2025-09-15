# 2025-09-12T15:23:34.683099
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

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

platform = client.get_component(name="platform_adc_adc_new_btn_wp")
status = platform.build()

comp = client.get_component(name="app_adc_new_new_btn111111111")
comp.build()

platform = client.get_component(name="platform_adc_uart_tap")
status = platform.build()

comp = client.get_component(name="app_adc_uart_tap")
comp.build()

platform = client.get_component(name="platform_stop_watch_intc")
status = platform.build()

comp = client.get_component(name="app_stop_watch_intc")
comp.build()

platform = client.get_component(name="platform_adc_uart_tap")
status = platform.build()

comp = client.get_component(name="app_adc_uart_tap")
comp.build()

vitis.dispose()

