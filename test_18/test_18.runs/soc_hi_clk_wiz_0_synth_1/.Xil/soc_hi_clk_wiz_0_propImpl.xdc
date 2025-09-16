set_property SRC_FILE_INFO {cfile:/home/user11/work/test_18/test_18.gen/sources_1/bd/soc_hi/ip/soc_hi_clk_wiz_0/soc_hi_clk_wiz_0.xdc rfile:../../../test_18.gen/sources_1/bd/soc_hi/ip/soc_hi_clk_wiz_0/soc_hi_clk_wiz_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
