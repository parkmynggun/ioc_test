# 2025-09-09T20:03:20.115801
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

platform = client.create_platform_component(name = "platform_adc_fnd11111",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_adc_fnd_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_adc_fnd1111",platform = "$COMPONENT_LOCATION/../platform_adc_fnd11111/export/platform_adc_fnd11111/platform_adc_fnd11111.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_adc_fnd11111")
status = platform.build()

comp = client.get_component(name="app_adc_fnd1111")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

