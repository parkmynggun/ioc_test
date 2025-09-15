# 2025-09-11T16:49:45.695628
import vitis

client = vitis.create_client()
client.set_workspace(path="soc2024_2")

platform = client.get_component(name="platform_led_sw")
status = platform.build()

comp = client.get_component(name="app_led_sw")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_adc_adc_new")
status = platform.build()

comp = client.get_component(name="apt_adc_adc_new")
comp.build()

platform = client.create_platform_component(name = "platform_adc_test",hw_design = "$COMPONENT_LOCATION/../../test_18/soc_pwm_led_wrapper_pwm.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_adc_adc_adc_adc",platform = "$COMPONENT_LOCATION/../platform_adc_test/export/platform_adc_test/platform_adc_test.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_hi")
status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

status = platform.build()

comp.build()

comp = client.create_app_component(name="hello_world11",platform = "$COMPONENT_LOCATION/../platform_i2c_dht11/export/platform_i2c_dht11/platform_i2c_dht11.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

status = platform.build()

comp.build()

platform = client.get_component(name="platform_i2c_dht11")
status = platform.build()

comp = client.get_component(name="hello_world11")
comp.build()

vitis.dispose()

