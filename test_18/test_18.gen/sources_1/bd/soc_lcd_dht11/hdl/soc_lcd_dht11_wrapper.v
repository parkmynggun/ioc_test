//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Tue Sep  9 09:48:44 2025
//Host        : user11-B70TV-AN5TB8W running 64-bit Ubuntu 24.04.3 LTS
//Command     : generate_target soc_lcd_dht11_wrapper.bd
//Design      : soc_lcd_dht11_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module soc_lcd_dht11_wrapper
   (com_0,
    dht11_data_0,
    led_0,
    reset,
    scl_0,
    sda_0,
    seg_7_0,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output [3:0]com_0;
  inout dht11_data_0;
  output [15:0]led_0;
  input reset;
  output scl_0;
  output sda_0;
  output [7:0]seg_7_0;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [3:0]com_0;
  wire dht11_data_0;
  wire [15:0]led_0;
  wire reset;
  wire scl_0;
  wire sda_0;
  wire [7:0]seg_7_0;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  soc_lcd_dht11 soc_lcd_dht11_i
       (.com_0(com_0),
        .dht11_data_0(dht11_data_0),
        .led_0(led_0),
        .reset(reset),
        .scl_0(scl_0),
        .sda_0(sda_0),
        .seg_7_0(seg_7_0),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
