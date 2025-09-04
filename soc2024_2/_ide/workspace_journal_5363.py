# 2025-09-03T15:01:02.365500
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

platform = client.create_platform_component(name = "platform_led_seg7",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_btn_fnd_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_seg7_led",platform = "$COMPONENT_LOCATION/../platform_led_seg7/export/platform_led_seg7/platform_led_seg7.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_led_seg7")
status = platform.build()

comp = client.get_component(name="app_seg7_led")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

