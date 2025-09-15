# 2025-09-10T10:41:45.573861
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

platform = client.create_platform_component(name = "platform_adc_new_fnd",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_adc_fnd_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_adc_new_fnd",platform = "$COMPONENT_LOCATION/../platform_adc_new_fnd/export/platform_adc_new_fnd/platform_adc_new_fnd.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_adc_new_fnd")
status = platform.build()

comp = client.get_component(name="app_adc_new_fnd")
comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_stop_watch")
status = platform.build()

comp = client.get_component(name="app_stop_watch")
comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_adc_new_fnd")
status = platform.build()

comp = client.get_component(name="app_adc_new_fnd")
comp.build()

platform = client.get_component(name="platform_adc_fnd")
status = platform.build()

comp = client.get_component(name="app_adc_fnd")
comp.build()

platform = client.create_platform_component(name = "platform_stop_watch_new",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_stop_watch_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_stop_watch_new",platform = "$COMPONENT_LOCATION/../platform_stop_watch_new/export/platform_stop_watch_new/platform_stop_watch_new.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_stop_watch_new")
status = platform.build()

comp = client.get_component(name="app_stop_watch_new")
comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_adc_fnd")
status = platform.build()

comp = client.get_component(name="app_adc_fnd")
comp.build()

status = platform.build()

comp.build()

platform = client.create_platform_component(name = "platform_adc_new",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_adc_new_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_adc_new",platform = "$COMPONENT_LOCATION/../platform_adc_new/export/platform_adc_new/platform_adc_new.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_adc_new")
status = platform.build()

comp = client.get_component(name="app_adc_new")
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

platform = client.create_platform_component(name = "platform_adc_adc_new",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_adc_adc_new_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="apt_adc_adc_new",platform = "$COMPONENT_LOCATION/../platform_adc_adc_new/export/platform_adc_adc_new/platform_adc_adc_new.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_adc_adc_new")
status = platform.build()

comp = client.get_component(name="apt_adc_adc_new")
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

platform = client.create_platform_component(name = "platform_adc_adc_adc_tap1",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_adc_adc_new_wrapper1.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_adc_adc_adc_tap1",platform = "$COMPONENT_LOCATION/../platform_adc_adc_adc_tap1/export/platform_adc_adc_adc_tap1/platform_adc_adc_adc_tap1.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_adc_adc_adc_tap1")
status = platform.build()

comp = client.get_component(name="app_adc_adc_adc_tap1")
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

platform = client.create_platform_component(name = "platform_adc_new_btn",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_adc_adc_new_btn_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_adc_new_btn",platform = "$COMPONENT_LOCATION/../platform_adc_new_btn/export/platform_adc_new_btn/platform_adc_new_btn.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_adc_new_btn")
status = platform.build()

comp = client.get_component(name="app_adc_new_btn")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

platform = client.create_platform_component(name = "platform_adc_btn_new__tap",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_adc_adc_new_11111wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_adc_new_tap_tap",platform = "$COMPONENT_LOCATION/../platform_adc_btn_new__tap/export/platform_adc_btn_new__tap/platform_adc_btn_new__tap.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_adc_btn_new__tap")
status = platform.build()

comp = client.get_component(name="app_adc_new_tap_tap")
comp.build()

vitis.dispose()

