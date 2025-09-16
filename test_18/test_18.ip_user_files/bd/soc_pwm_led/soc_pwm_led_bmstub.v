// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module soc_pwm_led (
  usb_uart_0_rxd,
  usb_uart_0_txd,
  reset,
  sys_clock,
  pwm_0,
  pwm_1_0,
  pwm_2_0,
  vauxn14_0,
  vauxn15_0,
  vauxn6_0,
  vauxn7_0,
  vauxp14_0,
  vauxp15_0,
  vauxp6_0,
  vauxp7_0,
  rx_0,
  tx_0,
  btn_0,
  btn_1,
  iic_rtl_scl_i,
  iic_rtl_scl_o,
  iic_rtl_scl_t,
  iic_rtl_sda_i,
  iic_rtl_sda_o,
  iic_rtl_sda_t
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart_0 RxD" *)
  (* X_INTERFACE_MODE = "master usb_uart_0" *)
  input usb_uart_0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart_0 TxD" *)
  output usb_uart_0_txd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *)
  (* X_INTERFACE_MODE = "slave RST.RESET" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.SYS_CLOCK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN soc_pwm_led_sys_clock, INSERT_VIP 0" *)
  input sys_clock;
  (* X_INTERFACE_IGNORE = "true" *)
  output pwm_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output pwm_1_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output pwm_2_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input vauxn14_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input vauxn15_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input vauxn6_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input vauxn7_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input vauxp14_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input vauxp15_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input vauxp6_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input vauxp7_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input rx_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output tx_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [3:0]btn_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [3:0]btn_1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl SCL_I" *)
  (* X_INTERFACE_MODE = "master iic_rtl" *)
  input iic_rtl_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl SCL_O" *)
  output iic_rtl_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl SCL_T" *)
  output iic_rtl_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl SDA_I" *)
  input iic_rtl_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl SDA_O" *)
  output iic_rtl_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl SDA_T" *)
  output iic_rtl_sda_t;

  // stub module has no contents

endmodule
