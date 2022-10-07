transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/IIT/EE/Labs/Lab_4/Expt_2/DUT.vhd}
vcom -93 -work work {C:/IIT/EE/Labs/Lab_4/Expt_2/Gates.vhd}
vcom -93 -work work {C:/IIT/EE/Labs/Lab_4/Expt_2/Add_sub_4bit.vhd}
vcom -93 -work work {C:/IIT/EE/Labs/Lab_4/Expt_2/Full_adder.vhd}
vcom -93 -work work {C:/IIT/EE/Labs/Lab_4/Expt_2/BCD_adder.vhd}

vcom -93 -work work {C:/IIT/EE/Labs/Lab_4/Expt_2/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
