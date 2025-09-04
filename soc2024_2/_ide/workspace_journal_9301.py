# 2025-09-04T09:06:01.525318
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

platform = client.get_component(name="platform_led_seg7")
status = platform.build()

comp = client.get_component(name="app_seg7_led")
comp.build()

vitis.dispose()

