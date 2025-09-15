# 2025-09-09T09:28:40.928577
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

platform = client.get_component(name="platform_i2c_dht11")
status = platform.build()

comp = client.get_component(name="app_i2c_dht11")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_dht11_lcd1")
status = platform.build()

comp = client.get_component(name="app_dht11_lcd1")
comp.build()

platform = client.get_component(name="platform_i2c_dht11")
status = platform.build()

comp = client.get_component(name="app_i2c_dht11")
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

platform = client.create_platform_component(name = "platform_lcd_dht11_1",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_lcd_dht11_wrapper1.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_lcd_dht11_1",platform = "$COMPONENT_LOCATION/../platform_lcd_dht11_1/export/platform_lcd_dht11_1/platform_lcd_dht11_1.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_lcd_dht11_1")
status = platform.build()

comp = client.get_component(name="app_lcd_dht11_1")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

