vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_16
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/microblaze_v11_0_14
vlib modelsim_lib/msim/microblaze_riscv_v1_0_3
vlib modelsim_lib/msim/lmb_v10_v3_0_14
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_25
vlib modelsim_lib/msim/blk_mem_gen_v8_4_9
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/mdm_riscv_v1_0_3
vlib modelsim_lib/msim/lib_pkg_v1_0_4
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_4
vlib modelsim_lib/msim/axi_uartlite_v2_0_37
vlib modelsim_lib/msim/xlconstant_v1_1_9
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_33
vlib modelsim_lib/msim/axi_vip_v1_1_19

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 modelsim_lib/msim/proc_sys_reset_v5_0_16
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap microblaze_v11_0_14 modelsim_lib/msim/microblaze_v11_0_14
vmap microblaze_riscv_v1_0_3 modelsim_lib/msim/microblaze_riscv_v1_0_3
vmap lmb_v10_v3_0_14 modelsim_lib/msim/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_25 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_25
vmap blk_mem_gen_v8_4_9 modelsim_lib/msim/blk_mem_gen_v8_4_9
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_riscv_v1_0_3 modelsim_lib/msim/mdm_riscv_v1_0_3
vmap lib_pkg_v1_0_4 modelsim_lib/msim/lib_pkg_v1_0_4
vmap lib_srl_fifo_v1_0_4 modelsim_lib/msim/lib_srl_fifo_v1_0_4
vmap axi_uartlite_v2_0_37 modelsim_lib/msim/axi_uartlite_v2_0_37
vmap xlconstant_v1_1_9 modelsim_lib/msim/xlconstant_v1_1_9
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_33 modelsim_lib/msim/axi_register_slice_v2_1_33
vmap axi_vip_v1_1_19 modelsim_lib/msim/axi_vip_v1_1_19

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

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"/home/user11/tools/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/user11/tools/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/user11/tools/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/user11/tools/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_3 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/soc_adc_new/ip/soc_adc_new_proc_sys_reset_0_0/sim/soc_adc_new_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_adc_new/ip/soc_adc_new_clk_wiz_0/soc_adc_new_clk_wiz_0_clk_wiz.v" \
"../../../bd/soc_adc_new/ip/soc_adc_new_clk_wiz_0/soc_adc_new_clk_wiz_0.v" \

vcom -work microblaze_v11_0_14 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/a243/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work microblaze_riscv_v1_0_3 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f9dd/hdl/microblaze_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/soc_adc_new/ip/soc_adc_new_microblaze_riscv_0_0/sim/soc_adc_new_microblaze_riscv_0_0.vhd" \

vcom -work lmb_v10_v3_0_14 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/soc_adc_new/ip/soc_adc_new_dlmb_v10_0/sim/soc_adc_new_dlmb_v10_0.vhd" \
"../../../bd/soc_adc_new/ip/soc_adc_new_ilmb_v10_0/sim/soc_adc_new_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_25 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/73e9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/soc_adc_new/ip/soc_adc_new_dlmb_bram_if_cntlr_0/sim/soc_adc_new_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/soc_adc_new/ip/soc_adc_new_ilmb_bram_if_cntlr_0/sim/soc_adc_new_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_9 -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_adc_new/ip/soc_adc_new_lmb_bram_0/sim/soc_adc_new_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_riscv_v1_0_3 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/d547/hdl/mdm_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/soc_adc_new/ip/soc_adc_new_mdm_1_0/sim/soc_adc_new_mdm_1_0.vhd" \

vcom -work lib_pkg_v1_0_4 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_37 -64 -93  \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/9a87/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_uartlite_0_0/sim/soc_adc_new_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/sim/bd_495c.v" \

vlog -work xlconstant_v1_1_9 -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_0/sim/bd_495c_one_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_1/sim/bd_495c_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_2/sim/bd_495c_arinsw_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_3/sim/bd_495c_rinsw_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_4/sim/bd_495c_awinsw_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_5/sim/bd_495c_winsw_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_6/sim/bd_495c_binsw_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_7/sim/bd_495c_aroutsw_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_8/sim/bd_495c_routsw_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_9/sim/bd_495c_awoutsw_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_10/sim/bd_495c_woutsw_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_11/sim/bd_495c_boutsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_12/sim/bd_495c_arni_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_13/sim/bd_495c_rni_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_14/sim/bd_495c_awni_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_15/sim/bd_495c_wni_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_16/sim/bd_495c_bni_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_17/sim/bd_495c_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_18/sim/bd_495c_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_19/sim/bd_495c_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_20/sim/bd_495c_s00a2s_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_21/sim/bd_495c_sarn_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_22/sim/bd_495c_srn_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_23/sim/bd_495c_sawn_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_24/sim/bd_495c_swn_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_25/sim/bd_495c_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_26/sim/bd_495c_m00s2a_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_27/sim/bd_495c_m00arn_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_28/sim/bd_495c_m00rn_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_29/sim/bd_495c_m00awn_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_30/sim/bd_495c_m00wn_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_31/sim/bd_495c_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_32/sim/bd_495c_m00e_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_33/sim/bd_495c_m01s2a_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_34/sim/bd_495c_m01arn_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_35/sim/bd_495c_m01rn_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_36/sim/bd_495c_m01awn_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_37/sim/bd_495c_m01wn_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_38/sim/bd_495c_m01bn_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_39/sim/bd_495c_m01e_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_40/sim/bd_495c_m02s2a_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_41/sim/bd_495c_m02arn_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_42/sim/bd_495c_m02rn_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_43/sim/bd_495c_m02awn_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_44/sim/bd_495c_m02wn_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_45/sim/bd_495c_m02bn_0.sv" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/bd_0/ip/ip_46/sim/bd_495c_m02e_0.sv" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33 -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_adc_new/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/soc_adc_new/ip/soc_adc_new_axi_smc_0/sim/soc_adc_new_axi_smc_0.v" \
"../../../bd/soc_adc_new/ipshared/66e3/hdl/myip_fnd_slave_lite_v1_0_S00_AXI.v" \
"../../../bd/soc_adc_new/ipshared/66e3/src/countre.v" \
"../../../bd/soc_adc_new/ipshared/66e3/src/test.v" \
"../../../bd/soc_adc_new/ipshared/66e3/src/test_top.v" \
"../../../bd/soc_adc_new/ipshared/66e3/hdl/myip_fnd.v" \
"../../../bd/soc_adc_new/ip/soc_adc_new_myip_fnd_0_0/sim/soc_adc_new_myip_fnd_0_0.v" \
"../../../bd/soc_adc_new/ip/soc_adc_new_myip_adc_new_0_0/src/xadc_wiz_1/xadc_wiz_1.v" \
"../../../bd/soc_adc_new/ipshared/5c3a/hdl/myip_adc_new_slave_lite_v1_0_S00_AXI.v" \
"../../../bd/soc_adc_new/ipshared/5c3a/src/test_top.v" \
"../../../bd/soc_adc_new/ipshared/5c3a/hdl/myip_adc_new.v" \
"../../../bd/soc_adc_new/ip/soc_adc_new_myip_adc_new_0_0/sim/soc_adc_new_myip_adc_new_0_0.v" \
"../../../bd/soc_adc_new/sim/soc_adc_new.v" \

vlog -work xil_defaultlib \
"glbl.v"

