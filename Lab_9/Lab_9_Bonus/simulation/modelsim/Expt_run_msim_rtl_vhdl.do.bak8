transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/IIT/EE/Labs/Lab_9/Lab_9_Bonus/serial_adder.vhd}
vcom -93 -work work {C:/IIT/EE/Labs/Lab_9/Lab_9_Bonus/DUT.vhd}

vcom -93 -work work {C:/IIT/EE/Labs/Lab_9/Lab_9_Bonus/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
