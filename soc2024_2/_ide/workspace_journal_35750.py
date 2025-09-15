# 2025-09-05T15:55:58.495051
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

platform = client.create_platform_component(name = "platform_lcd_dht11",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_lcd_dht11_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_lcd_dht11",platform = "$COMPONENT_LOCATION/../platform_lcd_dht11/export/platform_lcd_dht11/platform_lcd_dht11.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_lcd_dht11")
status = platform.build()

comp = client.get_component(name="app_lcd_dht11")
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

