onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib soc_lcd_dht11_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {soc_lcd_dht11.udo}

run 1000ns

quit -force
