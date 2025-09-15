#line 2 "lop-config.dts"
/dts-v1/;
/ {
        compatible = "system-device-tree-v1,lop";
        lops {
                lop_0 {
                        compatible = "system-device-tree-v1,lop,load";
                        load = "assists/baremetal_validate_comp_xlnx.py";
                };

                lop_1 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "/home/user11/work/soc2024_2/platform_adc_test/export/platform_adc_test/sw/standalone_microblaze_riscv_0";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "microblaze_riscv_0 /home/user11/tools/Vitis/2024.2/data/embeddedsw/lib/sw_apps/hello_world/src /home/user11/work/soc2024_2/_ide/.wsdata/.repo.yaml";
                };

        };
    };
