// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module soc_adc_new (
  usb_uart_rxd,
  usb_uart_txd,
  reset,
  sys_clock,
  com_0,
  seg_7_0,
  vauxn14_0,
  vauxn6_0,
  vauxp14_0,
  vauxp6_0,
  vauxn15_0,
  vauxn7_0,
  vauxp15_0,
  vauxp7_0
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart RxD" *)
  (* X_INTERFACE_MODE = "master usb_uart" *)
  input usb_uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart TxD" *)
  output usb_uart_txd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *)
  (* X_INTERFACE_MODE = "slave RST.RESET" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.SYS_CLOCK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN soc_adc_new_sys_clock, INSERT_VIP 0" *)
  input sys_clock;
  (* X_INTERFACE_IGNORE = "true" *)
  output [3:0]com_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]seg_7_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input vauxn14_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input vauxn6_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input vauxp14_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input vauxp6_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input vauxn15_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input vauxn7_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input vauxp15_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input vauxp7_0;

  // stub module has no contents

endmodule
