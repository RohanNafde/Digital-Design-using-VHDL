transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Expt_2.vho}

vcom -93 -work work {C:/IIT/EE/Labs/First_day/Lab 1 Expt 2/Testbench.vhd}

vsim -t 1ps -L altera -L altera_lnsim -L fiftyfivenm -L gate_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
