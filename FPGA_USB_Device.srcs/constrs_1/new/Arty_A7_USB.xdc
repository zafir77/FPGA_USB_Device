## =========================================================
## Arty A7 USB Flash Drive
## =========================================================

## 100 MHz onboard clock
set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { clk100mhz }]
create_clock -add -name sys_clk_pin -period 10.000 -waveform {0 5} [get_ports { clk100mhz }]


## LED0
set_property -dict { PACKAGE_PIN H5 IOSTANDARD LVCMOS33 } [get_ports { led }]


## BTN0
set_property -dict { PACKAGE_PIN C2 IOSTANDARD LVCMOS33 } [get_ports { button }]


## =========================================================
## USB signals
## =========================================================

## USB D+
## Arty Pmod JB1 = E15
set_property -dict { PACKAGE_PIN E15 IOSTANDARD LVCMOS33 } [get_ports { usb_dp }]

## USB D-
## Arty Pmod JB2 = E16
set_property -dict { PACKAGE_PIN E16 IOSTANDARD LVCMOS33 } [get_ports { usb_dn }]

## USB D+ pull-up control
## Arty Pmod JB3 = D15
set_property -dict { PACKAGE_PIN D15 IOSTANDARD LVCMOS33 } [get_ports { usb_dp_pull }]

## FPGA configuration voltage
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

## =========================================================
## Debug UART
## =========================================================
set_property -dict { PACKAGE_PIN D10 IOSTANDARD LVCMOS33 } [get_ports { uart_tx }]
