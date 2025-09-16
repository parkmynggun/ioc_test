onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib iic_lcd_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {iic_lcd.udo}

run 1000ns

quit -force
