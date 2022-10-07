transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib v_jtag
vmap v_jtag v_jtag
vcom -93 -work v_jtag {C:/IIT/EE/Labs/Lab_8/v_jtag.vhd}
vcom -93 -work work {C:/IIT/EE/Labs/Lab_8/TopLevel.vhdl}
vcom -93 -work work {C:/IIT/EE/Labs/Lab_8/DUT.vhd}
vcom -93 -work work {C:/IIT/EE/Labs/Lab_8/word_detection.vhd}

vcom -93 -work work {C:/IIT/EE/Labs/Lab_8/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -L v_jtag -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
