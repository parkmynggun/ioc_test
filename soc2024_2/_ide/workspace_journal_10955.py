# 2025-09-15T08:52:49.884328
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

platform = client.get_component(name="platform_adc_bode_uart_38400")
status = platform.build()

comp = client.get_component(name="app_adc_new_bod_38400")
comp.build()

platform = client.get_component(name="platform_intc")
status = platform.build()

comp = client.get_component(name="app_intc")
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

platform = client.get_component(name="platform_stop_watch_intc")
status = platform.build()

comp = client.get_component(name="app_stop_watch_intc")
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

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

