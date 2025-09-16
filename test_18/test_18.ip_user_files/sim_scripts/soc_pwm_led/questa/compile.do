vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/lib_cdc_v1_0_3
vlib questa_lib/msim/proc_sys_reset_v5_0_16
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/microblaze_v11_0_14
vlib questa_lib/msim/microblaze_riscv_v1_0_3
vlib questa_lib/msim/lmb_v10_v3_0_14
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_25
vlib questa_lib/msim/blk_mem_gen_v8_4_9
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/mdm_riscv_v1_0_3
vlib questa_lib/msim/lib_pkg_v1_0_4
vlib questa_lib/msim/lib_srl_fifo_v1_0_4
vlib questa_lib/msim/axi_uartlite_v2_0_37
vlib questa_lib/msim/xlconstant_v1_1_9
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_33
vlib questa_lib/msim/axi_vip_v1_1_19
vlib questa_lib/msim/interrupt_control_v3_1_5
vlib questa_lib/msim/axi_iic_v2_1_9

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap lib_cdc_v1_0_3 questa_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 questa_lib/msim/proc_sys_reset_v5_0_16
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap microblaze_v11_0_14 questa_lib/msim/microblaze_v11_0_14
vmap microblaze_riscv_v1_0_3 questa_lib/msim/microblaze_riscv_v1_0_3
vmap lmb_v10_v3_0_14 questa_lib/msim/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_25 questa_lib/msim/lmb_bram_if_cntlr_v4_0_25
vmap blk_mem_gen_v8_4_9 questa_lib/msim/blk_mem_gen_v8_4_9
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_riscv_v1_0_3 questa_lib/msim/mdm_riscv_v1_0_3
vmap lib_pkg_v1_0_4 questa_lib/msim/lib_pkg_v1_0_4
vmap lib_srl_fifo_v1_0_4 questa_lib/msim/lib_srl_fifo_v1_0_4
vmap axi_uartlite_v2_0_37 questa_lib/msim/axi_uartlite_v2_0_37
vmap xlconstant_v1_1_9 questa_lib/msim/xlconstant_v1_1_9
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_33 questa_lib/msim/axi_register_slice_v2_1_33
vmap axi_vip_v1_1_19 questa_lib/msim/axi_vip_v1_1_19
vmap interrupt_control_v3_1_5 questa_lib/msim/interrupt_control_v3_1_5
vmap axi_iic_v2_1_9 questa_lib/msim/axi_iic_v2_1_9

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"/home/user11/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/user11/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/user11/tools/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/user11/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/user11/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/user11/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/user11/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/user11/tools/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/user11/tools/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"/home/user11/tools/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/user11/tools/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/user11/tools/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/user11/tools/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_3 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_proc_sys_reset_0_0/sim/soc_pwm_led_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_clk_wiz_0/soc_pwm_led_clk_wiz_0_clk_wiz.v" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_clk_wiz_0/soc_pwm_led_clk_wiz_0.v" \

vcom -work microblaze_v11_0_14 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/a243/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work microblaze_riscv_v1_0_3 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f9dd/hdl/microblaze_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_microblaze_riscv_0_0/sim/soc_pwm_led_microblaze_riscv_0_0.vhd" \

vcom -work lmb_v10_v3_0_14 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_dlmb_v10_0/sim/soc_pwm_led_dlmb_v10_0.vhd" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_ilmb_v10_0/sim/soc_pwm_led_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_25 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/73e9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_dlmb_bram_if_cntlr_0/sim/soc_pwm_led_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_ilmb_bram_if_cntlr_0/sim/soc_pwm_led_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_9 -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_lmb_bram_0/sim/soc_pwm_led_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_riscv_v1_0_3 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/d547/hdl/mdm_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_mdm_1_0/sim/soc_pwm_led_mdm_1_0.vhd" \

vcom -work lib_pkg_v1_0_4 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_37 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/9a87/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_uartlite_0_0/sim/soc_pwm_led_axi_uartlite_0_0.vhd" \

vlog -work xlconstant_v1_1_9 -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_0/sim/bd_e39f_one_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_1/sim/bd_e39f_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_2/sim/bd_e39f_arinsw_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_3/sim/bd_e39f_rinsw_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_4/sim/bd_e39f_awinsw_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_5/sim/bd_e39f_winsw_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_6/sim/bd_e39f_binsw_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_7/sim/bd_e39f_aroutsw_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_8/sim/bd_e39f_routsw_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_9/sim/bd_e39f_awoutsw_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_10/sim/bd_e39f_woutsw_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_11/sim/bd_e39f_boutsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_12/sim/bd_e39f_arni_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_13/sim/bd_e39f_rni_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_14/sim/bd_e39f_awni_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_15/sim/bd_e39f_wni_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_16/sim/bd_e39f_bni_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_17/sim/bd_e39f_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_18/sim/bd_e39f_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_19/sim/bd_e39f_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_20/sim/bd_e39f_s00a2s_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_21/sim/bd_e39f_sarn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_22/sim/bd_e39f_srn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_23/sim/bd_e39f_sawn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_24/sim/bd_e39f_swn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_25/sim/bd_e39f_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_26/sim/bd_e39f_m00s2a_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_27/sim/bd_e39f_m00arn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_28/sim/bd_e39f_m00rn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_29/sim/bd_e39f_m00awn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_30/sim/bd_e39f_m00wn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_31/sim/bd_e39f_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_32/sim/bd_e39f_m00e_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_33/sim/bd_e39f_m01s2a_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_34/sim/bd_e39f_m01arn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_35/sim/bd_e39f_m01rn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_36/sim/bd_e39f_m01awn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_37/sim/bd_e39f_m01wn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_38/sim/bd_e39f_m01bn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_39/sim/bd_e39f_m01e_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_40/sim/bd_e39f_m02s2a_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_41/sim/bd_e39f_m02arn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_42/sim/bd_e39f_m02rn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_43/sim/bd_e39f_m02awn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_44/sim/bd_e39f_m02wn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_45/sim/bd_e39f_m02bn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_46/sim/bd_e39f_m02e_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_47/sim/bd_e39f_m03s2a_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_48/sim/bd_e39f_m03arn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_49/sim/bd_e39f_m03rn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_50/sim/bd_e39f_m03awn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_51/sim/bd_e39f_m03wn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_52/sim/bd_e39f_m03bn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_53/sim/bd_e39f_m03e_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_54/sim/bd_e39f_m04s2a_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_55/sim/bd_e39f_m04arn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_56/sim/bd_e39f_m04rn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_57/sim/bd_e39f_m04awn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_58/sim/bd_e39f_m04wn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_59/sim/bd_e39f_m04bn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_60/sim/bd_e39f_m04e_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_61/sim/bd_e39f_m05s2a_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_62/sim/bd_e39f_m05arn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_63/sim/bd_e39f_m05rn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_64/sim/bd_e39f_m05awn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_65/sim/bd_e39f_m05wn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_66/sim/bd_e39f_m05bn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_67/sim/bd_e39f_m05e_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_68/sim/bd_e39f_m06s2a_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_69/sim/bd_e39f_m06arn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_70/sim/bd_e39f_m06rn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_71/sim/bd_e39f_m06awn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_72/sim/bd_e39f_m06wn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_73/sim/bd_e39f_m06bn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_74/sim/bd_e39f_m06e_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_75/sim/bd_e39f_m07s2a_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_76/sim/bd_e39f_m07arn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_77/sim/bd_e39f_m07rn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_78/sim/bd_e39f_m07awn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_79/sim/bd_e39f_m07wn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_80/sim/bd_e39f_m07bn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_81/sim/bd_e39f_m07e_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_82/sim/bd_e39f_m08s2a_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_83/sim/bd_e39f_m08arn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_84/sim/bd_e39f_m08rn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_85/sim/bd_e39f_m08awn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_86/sim/bd_e39f_m08wn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_87/sim/bd_e39f_m08bn_0.sv" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/ip/ip_88/sim/bd_e39f_m08e_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/bd_0/sim/bd_e39f.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33 -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_smc_0/sim/soc_pwm_led_axi_smc_0.v" \
"../../../bd/soc_pwm_led/ipshared/bde8/hdl/myip_pwm_slave_lite_v1_0_S00_AXI.v" \
"../../../bd/soc_pwm_led/ipshared/bde8/src/countre.v" \
"../../../bd/soc_pwm_led/ipshared/bde8/src/test.v" \
"../../../bd/soc_pwm_led/ipshared/bde8/hdl/myip_pwm.v" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_myip_pwm_0_0/sim/soc_pwm_led_myip_pwm_0_0.v" \
"../../../bd/soc_pwm_led/ipshared/e47b/hdl/myip_pwm_1_slave_lite_v1_0_S00_AXI.v" \
"../../../bd/soc_pwm_led/ipshared/e47b/hdl/myip_pwm_1.v" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_myip_pwm_1_0_0/sim/soc_pwm_led_myip_pwm_1_0_0.v" \
"../../../bd/soc_pwm_led/ipshared/7ffb/hdl/myip_pwm_2_slave_lite_v1_0_S00_AXI.v" \
"../../../bd/soc_pwm_led/ipshared/7ffb/hdl/myip_pwm_2.v" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_myip_pwm_2_0_0/sim/soc_pwm_led_myip_pwm_2_0_0.v" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_myip_adc_new_0_0/src/xadc_wiz_1/xadc_wiz_1.v" \
"../../../bd/soc_pwm_led/ipshared/5c3a/hdl/myip_adc_new_slave_lite_v1_0_S00_AXI.v" \
"../../../bd/soc_pwm_led/ipshared/5c3a/src/test_top.v" \
"../../../bd/soc_pwm_led/ipshared/5c3a/hdl/myip_adc_new.v" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_myip_adc_new_0_0/sim/soc_pwm_led_myip_adc_new_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_uartlite_1_0/sim/soc_pwm_led_axi_uartlite_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_pwm_led/ipshared/a6a5/hdl/myip_btn_slave_lite_v1_0_S00_AXI.v" \
"../../../bd/soc_pwm_led/ipshared/a6a5/src/countre.v" \
"../../../bd/soc_pwm_led/ipshared/a6a5/hdl/myip_btn.v" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_myip_btn_0_0/sim/soc_pwm_led_myip_btn_0_0.v" \
"../../../bd/soc_pwm_led/sim/soc_pwm_led.v" \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_myip_btn_1_0/sim/soc_pwm_led_myip_btn_1_0.v" \

vcom -work interrupt_control_v3_1_5 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_iic_v2_1_9 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_pwm_led/ipshared/2eec/hdl/axi_iic_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/soc_pwm_led/ip/soc_pwm_led_axi_iic_0_0/sim/soc_pwm_led_axi_iic_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

