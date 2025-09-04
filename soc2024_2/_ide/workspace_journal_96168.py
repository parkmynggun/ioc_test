# 2025-09-03T12:39:55.541080
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

platform = client.get_component(name="platform_btn_fnd")
status = platform.build()

comp = client.get_component(name="app_btn_fnd")
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

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

