# 2025-09-11T08:34:57.530821
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

platform = client.create_platform_component(name = "platform_adc_fnd_new_btn1",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_adc_adc_new_btn1_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_adc_new_fnd_bnt1",platform = "$COMPONENT_LOCATION/../platform_adc_fnd_new_btn1/export/platform_adc_fnd_new_btn1/platform_adc_fnd_new_btn1.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_adc_fnd_new_btn1")
status = platform.build()

comp = client.get_component(name="app_adc_new_fnd_bnt1")
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

platform = client.create_platform_component(name = "platform_adc_adc_new_btn_wp",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_adc_adc_new_wrapper_btn.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_adc_new_new_btn111111111",platform = "$COMPONENT_LOCATION/../platform_adc_adc_new_btn_wp/export/platform_adc_adc_new_btn_wp/platform_adc_adc_new_btn_wp.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_adc_adc_new_btn_wp")
status = platform.build()

comp = client.get_component(name="app_adc_new_new_btn111111111")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_adc_adc_adc_tap1")
status = platform.build()

comp = client.get_component(name="app_adc_adc_adc_tap1")
comp.build()

platform = client.get_component(name="platform_adc_adc_new_btn_wp")
status = platform.build()

comp = client.get_component(name="app_adc_new_new_btn111111111")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

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

platform = client.get_component(name="platform_adc_adc_new_btn_wp")
status = platform.build()

comp = client.get_component(name="app_adc_new_new_btn111111111")
comp.build()

platform = client.create_platform_component(name = "platform_pwm",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_pwm_led_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_pwm",platform = "$COMPONENT_LOCATION/../platform_pwm/export/platform_pwm/platform_pwm.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_pwm")
status = platform.build()

comp = client.get_component(name="app_pwm")
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

platform = client.create_platform_component(name = "platform_pwm_rgb",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_pwm_led_wrapper_1.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_pwm_rgb",platform = "$COMPONENT_LOCATION/../platform_pwm_rgb/export/platform_pwm_rgb/platform_pwm_rgb.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_pwm_rgb")
status = platform.build()

comp = client.get_component(name="app_pwm_rgb")
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

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_adc_adc_new_btn_wp")
status = platform.build()

comp = client.get_component(name="app_adc_new_new_btn111111111")
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

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_adc_adc_adc_tap1")
status = platform.build()

comp = client.get_component(name="app_adc_adc_adc_tap1")
comp.build()

platform = client.get_component(name="platform_adc_adc_new_btn_wp")
status = platform.build()

comp = client.get_component(name="app_adc_new_new_btn111111111")
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

client.delete_component(name="app_adc_new_tap_tap")

client.delete_component(name="app_adc_new_fnd_bnt1")

client.delete_component(name="app_adc_new_fnd")

client.delete_component(name="app_adc_new_btn")

client.delete_component(name="app_adc_new")

platform = client.get_component(name="platform_pwm_rgb")
status = platform.build()

comp = client.get_component(name="app_pwm_rgb")
comp.build()

platform = client.create_platform_component(name = "platform_adc_pwm",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_pwm_led_wrapper_pwm.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_adc_pwm",platform = "$COMPONENT_LOCATION/../platform_adc_pwm/export/platform_adc_pwm/platform_adc_pwm.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_adc_pwm")
status = platform.build()

comp = client.get_component(name="app_adc_pwm")
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

platform = client.get_component(name="platform_adc_adc_new_btn_wp")
status = platform.build()

comp = client.get_component(name="app_adc_new_new_btn111111111")
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

platform = client.get_component(name="platform_adc_pwm")
status = platform.build()

comp = client.get_component(name="app_adc_pwm")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_adc_adc_new_btn_wp")
status = platform.build()

comp = client.get_component(name="app_adc_new_new_btn111111111")
comp.build()

vitis.dispose()

