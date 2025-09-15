# 2025-09-14T12:16:09.987924
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

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

platform = client.get_component(name="platform_adc_uart_tap")
status = platform.build()

comp = client.get_component(name="app_adc_uart_tap")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

