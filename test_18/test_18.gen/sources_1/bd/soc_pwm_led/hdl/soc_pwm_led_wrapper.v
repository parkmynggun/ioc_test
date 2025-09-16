//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Tue Sep 16 10:17:47 2025
//Host        : user11-B70TV-AN5TB8W running 64-bit Ubuntu 24.04.3 LTS
//Command     : generate_target soc_pwm_led_wrapper.bd
//Design      : soc_pwm_led_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module soc_pwm_led_wrapper
   (btn_0,
    btn_1,
    iic_rtl_scl_io,
    iic_rtl_sda_io,
    pwm_0,
    pwm_1_0,
    pwm_2_0,
    reset,
    rx_0,
    sys_clock,
    tx_0,
    usb_uart_0_rxd,
    usb_uart_0_txd,
    vauxn14_0,
    vauxn15_0,
    vauxn6_0,
    vauxn7_0,
    vauxp14_0,
    vauxp15_0,
    vauxp6_0,
    vauxp7_0);
  input [3:0]btn_0;
  input [3:0]btn_1;
  inout iic_rtl_scl_io;
  inout iic_rtl_sda_io;
  output pwm_0;
  output pwm_1_0;
  output pwm_2_0;
  input reset;
  input rx_0;
  input sys_clock;
  output tx_0;
  input usb_uart_0_rxd;
  output usb_uart_0_txd;
  input vauxn14_0;
  input vauxn15_0;
  input vauxn6_0;
  input vauxn7_0;
  input vauxp14_0;
  input vauxp15_0;
  input vauxp6_0;
  input vauxp7_0;

  wire [3:0]btn_0;
  wire [3:0]btn_1;
  wire iic_rtl_scl_i;
  wire iic_rtl_scl_io;
  wire iic_rtl_scl_o;
  wire iic_rtl_scl_t;
  wire iic_rtl_sda_i;
  wire iic_rtl_sda_io;
  wire iic_rtl_sda_o;
  wire iic_rtl_sda_t;
  wire pwm_0;
  wire pwm_1_0;
  wire pwm_2_0;
  wire reset;
  wire rx_0;
  wire sys_clock;
  wire tx_0;
  wire usb_uart_0_rxd;
  wire usb_uart_0_txd;
  wire vauxn14_0;
  wire vauxn15_0;
  wire vauxn6_0;
  wire vauxn7_0;
  wire vauxp14_0;
  wire vauxp15_0;
  wire vauxp6_0;
  wire vauxp7_0;

  IOBUF iic_rtl_scl_iobuf
       (.I(iic_rtl_scl_o),
        .IO(iic_rtl_scl_io),
        .O(iic_rtl_scl_i),
        .T(iic_rtl_scl_t));
  IOBUF iic_rtl_sda_iobuf
       (.I(iic_rtl_sda_o),
        .IO(iic_rtl_sda_io),
        .O(iic_rtl_sda_i),
        .T(iic_rtl_sda_t));
  soc_pwm_led soc_pwm_led_i
       (.btn_0(btn_0),
        .btn_1(btn_1),
        .iic_rtl_scl_i(iic_rtl_scl_i),
        .iic_rtl_scl_o(iic_rtl_scl_o),
        .iic_rtl_scl_t(iic_rtl_scl_t),
        .iic_rtl_sda_i(iic_rtl_sda_i),
        .iic_rtl_sda_o(iic_rtl_sda_o),
        .iic_rtl_sda_t(iic_rtl_sda_t),
        .pwm_0(pwm_0),
        .pwm_1_0(pwm_1_0),
        .pwm_2_0(pwm_2_0),
        .reset(reset),
        .rx_0(rx_0),
        .sys_clock(sys_clock),
        .tx_0(tx_0),
        .usb_uart_0_rxd(usb_uart_0_rxd),
        .usb_uart_0_txd(usb_uart_0_txd),
        .vauxn14_0(vauxn14_0),
        .vauxn15_0(vauxn15_0),
        .vauxn6_0(vauxn6_0),
        .vauxn7_0(vauxn7_0),
        .vauxp14_0(vauxp14_0),
        .vauxp15_0(vauxp15_0),
        .vauxp6_0(vauxp6_0),
        .vauxp7_0(vauxp7_0));
endmodule
