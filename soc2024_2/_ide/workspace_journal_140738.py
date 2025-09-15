# 2025-09-11T16:44:37.714233
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

platform = client.get_component(name="platform_adc_adc_new_btn_wp")
status = platform.build()

comp = client.get_component(name="app_adc_new_new_btn111111111")
comp.build()

vitis.dispose()

