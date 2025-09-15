# 2025-09-09T10:04:42.012439
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

platform = client.get_component(name="platform_lcd_dht11_1")
status = platform.build()

comp = client.get_component(name="app_lcd_dht11_1")
comp.build()

status = platform.build()

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

platform = client.create_platform_component(name = "platform_iic_lcd",hw_design = "$COMPONENT_LOCATION/../../test_18/iic_lcd_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_iic_lcd",platform = "$COMPONENT_LOCATION/../platform_iic_lcd/export/platform_iic_lcd/platform_iic_lcd.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_iic_lcd")
status = platform.build()

comp = client.get_component(name="app_iic_lcd")
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

