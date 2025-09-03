# 2025-09-03T09:02:37.926278
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

platform = client.get_component(name="platform_led_sw")
status = platform.build()

comp = client.get_component(name="app_led_sw")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

