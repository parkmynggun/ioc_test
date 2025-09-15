# 2025-09-04T15:12:40.501373
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

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

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_dht11_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

client.delete_component(name="platform")

platform = client.create_platform_component(name = "app_dht11tap",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_dht11_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

client.delete_component(name="app_dht11tap")

platform = client.create_platform_component(name = "platform_dht11tap",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_dht11_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_dht11tap",platform = "$COMPONENT_LOCATION/../platform_dht11tap/export/platform_dht11tap/platform_dht11tap.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_dht11tap")
status = platform.build()

comp = client.get_component(name="app_dht11tap")
comp.build()

client.delete_component(name="app_dht11")

client.delete_component(name="platform_dht11tap")

platform = client.create_platform_component(name = "platform_dht11tap",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_dht11_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_dht11tap1",platform = "$COMPONENT_LOCATION/../platform_dht11tap/export/platform_dht11tap/platform_dht11tap.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="app_dht11tap1")
comp.build()

client.delete_component(name="app_dht11tap")

client.delete_component(name="platform_dht11tap")

platform = client.create_platform_component(name = "platform_dht11_tap",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_dht11_wrappertap.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_dht11_tap",platform = "$COMPONENT_LOCATION/../platform_dht11_tap/export/platform_dht11_tap/platform_dht11_tap.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_dht11_tap")
status = platform.build()

comp = client.get_component(name="app_dht11_tap")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

