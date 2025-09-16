transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/lib_cdc_v1_0_3
vlib riviera/proc_sys_reset_v5_0_16
vlib riviera/xil_defaultlib
vlib riviera/microblaze_v11_0_14
vlib riviera/microblaze_riscv_v1_0_3
vlib riviera/lmb_v10_v3_0_14
vlib riviera/lmb_bram_if_cntlr_v4_0_25
vlib riviera/blk_mem_gen_v8_4_9
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mdm_riscv_v1_0_3
vlib riviera/lib_pkg_v1_0_4
vlib riviera/lib_srl_fifo_v1_0_4
vlib riviera/axi_uartlite_v2_0_37
vlib riviera/xlconstant_v1_1_9
vlib riviera/smartconnect_v1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_33
vlib riviera/axi_vip_v1_1_19

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 riviera/proc_sys_reset_v5_0_16
vmap xil_defaultlib riviera/xil_defaultlib
vmap microblaze_v11_0_14 riviera/microblaze_v11_0_14
vmap microblaze_riscv_v1_0_3 riviera/microblaze_riscv_v1_0_3
vmap lmb_v10_v3_0_14 riviera/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_25 riviera/lmb_bram_if_cntlr_v4_0_25
vmap blk_mem_gen_v8_4_9 riviera/blk_mem_gen_v8_4_9
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap mdm_riscv_v1_0_3 riviera/mdm_riscv_v1_0_3
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap lib_srl_fifo_v1_0_4 riviera/lib_srl_fifo_v1_0_4
vmap axi_uartlite_v2_0_37 riviera/axi_uartlite_v2_0_37
vmap xlconstant_v1_1_9 riviera/xlconstant_v1_1_9
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_33 riviera/axi_register_slice_v2_1_33
vmap axi_vip_v1_1_19 riviera/axi_vip_v1_1_19

vlog -work xilinx_vip  -incr "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"/home/user11/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/user11/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/user11/tools/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/user11/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/user11/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/user11/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/user11/tools/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/user11/tools/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/user11/tools/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"/home/user11/tools/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/user11/tools/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/user11/tools/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/home/user11/tools/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  -incr \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_proc_sys_reset_0_0/sim/soc_lcd_dht11_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_clk_wiz_0/soc_lcd_dht11_clk_wiz_0_clk_wiz.v" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_clk_wiz_0/soc_lcd_dht11_clk_wiz_0.v" \

vcom -work microblaze_v11_0_14 -93  -incr \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/a243/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work microblaze_riscv_v1_0_3 -93  -incr \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f9dd/hdl/microblaze_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_microblaze_riscv_0_0/sim/soc_lcd_dht11_microblaze_riscv_0_0.vhd" \

vcom -work lmb_v10_v3_0_14 -93  -incr \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_dlmb_v10_1/sim/soc_lcd_dht11_dlmb_v10_1.vhd" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_ilmb_v10_1/sim/soc_lcd_dht11_ilmb_v10_1.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_25 -93  -incr \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/73e9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_dlmb_bram_if_cntlr_1/sim/soc_lcd_dht11_dlmb_bram_if_cntlr_1.vhd" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_ilmb_bram_if_cntlr_1/sim/soc_lcd_dht11_ilmb_bram_if_cntlr_1.vhd" \

vlog -work blk_mem_gen_v8_4_9  -incr -v2k5 "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_lmb_bram_1/sim/soc_lcd_dht11_lmb_bram_1.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_riscv_v1_0_3 -93  -incr \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/d547/hdl/mdm_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_mdm_1_1/sim/soc_lcd_dht11_mdm_1_1.vhd" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  -incr \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_37 -93  -incr \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/9a87/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_uartlite_0_0/sim/soc_lcd_dht11_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/sim/bd_9313.v" \

vlog -work xlconstant_v1_1_9  -incr -v2k5 "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_0/sim/bd_9313_one_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_1/sim/bd_9313_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_2/sim/bd_9313_arinsw_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_3/sim/bd_9313_rinsw_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_4/sim/bd_9313_awinsw_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_5/sim/bd_9313_winsw_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_6/sim/bd_9313_binsw_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_7/sim/bd_9313_aroutsw_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_8/sim/bd_9313_routsw_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_9/sim/bd_9313_awoutsw_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_10/sim/bd_9313_woutsw_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_11/sim/bd_9313_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_12/sim/bd_9313_arni_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_13/sim/bd_9313_rni_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_14/sim/bd_9313_awni_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_15/sim/bd_9313_wni_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_16/sim/bd_9313_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_17/sim/bd_9313_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_18/sim/bd_9313_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_19/sim/bd_9313_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_20/sim/bd_9313_s00a2s_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_21/sim/bd_9313_sarn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_22/sim/bd_9313_srn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_23/sim/bd_9313_sawn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_24/sim/bd_9313_swn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_25/sim/bd_9313_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_26/sim/bd_9313_m00s2a_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_27/sim/bd_9313_m00arn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_28/sim/bd_9313_m00rn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_29/sim/bd_9313_m00awn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_30/sim/bd_9313_m00wn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_31/sim/bd_9313_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_32/sim/bd_9313_m00e_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_33/sim/bd_9313_m01s2a_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_34/sim/bd_9313_m01arn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_35/sim/bd_9313_m01rn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_36/sim/bd_9313_m01awn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_37/sim/bd_9313_m01wn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_38/sim/bd_9313_m01bn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_39/sim/bd_9313_m01e_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_40/sim/bd_9313_m02s2a_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_41/sim/bd_9313_m02arn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_42/sim/bd_9313_m02rn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_43/sim/bd_9313_m02awn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_44/sim/bd_9313_m02wn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_45/sim/bd_9313_m02bn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_46/sim/bd_9313_m02e_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_47/sim/bd_9313_m03s2a_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_48/sim/bd_9313_m03arn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_49/sim/bd_9313_m03rn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_50/sim/bd_9313_m03awn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_51/sim/bd_9313_m03wn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_52/sim/bd_9313_m03bn_0.sv" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/bd_0/ip/ip_53/sim/bd_9313_m03e_0.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33  -incr -v2k5 "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -incr "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/3cbc" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/f0b6/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/0127/hdl/verilog" "+incdir+../../../../test_18.gen/sources_1/bd/soc_lcd_dht11/ipshared/ec67/hdl" "+incdir+/home/user11/tools/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_axi_smc_0/sim/soc_lcd_dht11_axi_smc_0.v" \
"../../../bd/soc_lcd_dht11/ipshared/20b9/hdl/myip_dht11_tap_tap11_slave_lite_v1_0_S00_AXI.v" \
"../../../bd/soc_lcd_dht11/ipshared/20b9/src/clock.v" \
"../../../bd/soc_lcd_dht11/ipshared/20b9/src/countre.v" \
"../../../bd/soc_lcd_dht11/ipshared/20b9/src/test.v" \
"../../../bd/soc_lcd_dht11/ipshared/20b9/hdl/myip_dht11_tap_tap11.v" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_myip_dht11_tap_tap11_0_0/sim/soc_lcd_dht11_myip_dht11_tap_tap11_0_0.v" \
"../../../bd/soc_lcd_dht11/ipshared/66e3/hdl/myip_fnd_slave_lite_v1_0_S00_AXI.v" \
"../../../bd/soc_lcd_dht11/ipshared/66e3/src/test_top.v" \
"../../../bd/soc_lcd_dht11/ipshared/66e3/hdl/myip_fnd.v" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_myip_fnd_0_0/sim/soc_lcd_dht11_myip_fnd_0_0.v" \
"../../../bd/soc_lcd_dht11/ipshared/940a/hdl/myip_lcd_slave_lite_v1_0_S00_AXI.v" \
"../../../bd/soc_lcd_dht11/ipshared/940a/hdl/myip_lcd.v" \
"../../../bd/soc_lcd_dht11/ip/soc_lcd_dht11_myip_lcd_0_0/sim/soc_lcd_dht11_myip_lcd_0_0.v" \
"../../../bd/soc_lcd_dht11/sim/soc_lcd_dht11.v" \

vlog -work xil_defaultlib \
"glbl.v"

