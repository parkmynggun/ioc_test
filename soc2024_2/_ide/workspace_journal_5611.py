# 2025-09-04T16:22:32.535384
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

platform = client.create_platform_component(name = "platform_dht11_tap1",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_dht11_wrapper_tap1.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_dht11_tap1",platform = "$COMPONENT_LOCATION/../platform_dht11_tap1/export/platform_dht11_tap1/platform_dht11_tap1.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_dht11_tap1")
status = platform.build()

comp = client.get_component(name="app_dht11_tap1")
comp.build()

vitis.dispose()

