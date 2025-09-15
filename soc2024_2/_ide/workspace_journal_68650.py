# 2025-09-05T09:02:51.179213
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

platform = client.get_component(name="platform_dht11_tap1")
status = platform.build()

comp = client.get_component(name="app_dht11_tap1")
comp.build()

platform = client.get_component(name="platform_dht11_tap")
status = platform.build()

comp = client.get_component(name="app_dht11_tap")
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

platform = client.create_platform_component(name = "platform_dht11_tap_tap",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_dht11_wrapper_tap_tap.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_dht11_tap_tap",platform = "$COMPONENT_LOCATION/../platform_dht11_tap_tap/export/platform_dht11_tap_tap/platform_dht11_tap_tap.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_dht11_tap_tap")
status = platform.build()

comp = client.get_component(name="app_dht11_tap_tap")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="app_dht11_tap1")

client.delete_component(name="app_dht11tap1")

client.delete_component(name="app_dht11_tap")

client.delete_component(name="platform_dht11_tap1")

client.delete_component(name="platform_dht11_tap")

client.delete_component(name="platform_dht11")

client.delete_component(name="app_dht11_tap_tap")

comp = client.create_app_component(name="app_dht11_tap_tap",platform = "$COMPONENT_LOCATION/../platform_dht11_tap_tap/export/platform_dht11_tap_tap/platform_dht11_tap_tap.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

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

platform = client.create_platform_component(name = "platform_dht11",hw_design = "$COMPONENT_LOCATION/../../test_18/dht_11_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_dht11",platform = "$COMPONENT_LOCATION/../platform_dht11/export/platform_dht11/platform_dht11.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_dht11")
status = platform.build()

comp = client.get_component(name="app_dht11")
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

client.delete_component(name="platform_dht11")

platform = client.create_platform_component(name = "platform_dht11",hw_design = "$COMPONENT_LOCATION/../../test_18/dht11_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_dht11tap",platform = "$COMPONENT_LOCATION/../platform_dht11/export/platform_dht11/platform_dht11.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="app_dht11tap")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

