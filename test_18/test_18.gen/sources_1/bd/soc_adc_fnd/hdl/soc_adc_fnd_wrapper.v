//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Wed Sep 10 12:09:21 2025
//Host        : user11-B70TV-AN5TB8W running 64-bit Ubuntu 24.04.3 LTS
//Command     : generate_target soc_adc_fnd_wrapper.bd
//Design      : soc_adc_fnd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module soc_adc_fnd_wrapper
   (com_0,
    reset,
    seg_7_0,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd,
    vauxn14_0,
    vauxn6_0,
    vauxp14_0,
    vauxp6_0);
  output [3:0]com_0;
  input reset;
  output [7:0]seg_7_0;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;
  input vauxn14_0;
  input vauxn6_0;
  input vauxp14_0;
  input vauxp6_0;

  wire [3:0]com_0;
  wire reset;
  wire [7:0]seg_7_0;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;
  wire vauxn14_0;
  wire vauxn6_0;
  wire vauxp14_0;
  wire vauxp6_0;

  soc_adc_fnd soc_adc_fnd_i
       (.com_0(com_0),
        .reset(reset),
        .seg_7_0(seg_7_0),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd),
        .vauxn14_0(vauxn14_0),
        .vauxn6_0(vauxn6_0),
        .vauxp14_0(vauxp14_0),
        .vauxp6_0(vauxp6_0));
endmodule
