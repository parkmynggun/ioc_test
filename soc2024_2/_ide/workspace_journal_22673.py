# 2025-09-09T11:43:26.387699
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

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

client.delete_component(name="app_lcd_dht11")

client.delete_component(name="app_i2c_dht11")

platform = client.create_platform_component(name = "platform_adc_fnd",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_adc_fnd_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_adc_fnd",platform = "$COMPONENT_LOCATION/../platform_adc_fnd/export/platform_adc_fnd/platform_adc_fnd.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_adc_fnd")
status = platform.build()

comp = client.get_component(name="app_adc_fnd")
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

platform = client.create_platform_component(name = "platform_stop_watch",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_stop_watch_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_stop_watch",platform = "$COMPONENT_LOCATION/../platform_stop_watch/export/platform_stop_watch/platform_stop_watch.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_stop_watch")
status = platform.build()

comp = client.get_component(name="app_stop_watch")
comp.build()

platform = client.get_component(name="platform_adc_fnd")
status = platform.build()

comp = client.get_component(name="app_adc_fnd")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_stop_watch")
status = platform.build()

comp = client.get_component(name="app_stop_watch")
comp.build()

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

platform = client.get_component(name="platform_stop_watch")
status = platform.build()

comp = client.get_component(name="app_stop_watch")
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

platform = client.get_component(name="platform_iic_lcd")
status = platform.build()

comp = client.get_component(name="app_iic_lcd")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_stop_watch")
status = platform.build()

comp = client.get_component(name="app_stop_watch")
comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_adc_fnd")
status = platform.build()

comp = client.get_component(name="app_adc_fnd")
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

