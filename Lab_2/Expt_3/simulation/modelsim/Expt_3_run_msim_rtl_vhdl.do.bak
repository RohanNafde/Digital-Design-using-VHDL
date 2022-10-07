transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/IIT/EE/Labs/Lab 2/Expt_3/Gates.vhd}
vcom -93 -work work {C:/IIT/EE/Labs/Lab 2/Expt_3/DUT.vhd}
vcom -93 -work work {C:/IIT/EE/Labs/Lab 2/Expt_3/Encoder8to3.vhd}
vcom -93 -work work {C:/IIT/EE/Labs/Lab 2/Expt_3/Encoder4to2.vhd}

vcom -93 -work work {C:/IIT/EE/Labs/Lab 2/Expt_3/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
