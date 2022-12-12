transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Expt.vho}

vcom -93 -work work {C:/IIT/EE/Labs/Lab_9/Lab_9_Xenon/clock_divider_tb.vhd}

vsim -t 1ps -L altera -L altera_lnsim -L fiftyfivenm -L gate_work -L work -voptargs="+acc"  clock_divider_tb

add wave *
view structure
view signals
run -all
