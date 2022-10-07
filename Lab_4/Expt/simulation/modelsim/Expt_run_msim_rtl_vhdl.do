transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/IIT/EE/Labs/Lab_4/Expt/Gates.vhd}
vcom -93 -work work {C:/IIT/EE/Labs/Lab_4/Expt/DUT.vhd}
vcom -93 -work work {C:/IIT/EE/Labs/Lab_4/Expt/Full_Adder.vhd}
vcom -93 -work work {C:/IIT/EE/Labs/Lab_4/Expt/Add_Sub_4bit.vhd}

vcom -93 -work work {C:/IIT/EE/Labs/Lab_4/Expt/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
