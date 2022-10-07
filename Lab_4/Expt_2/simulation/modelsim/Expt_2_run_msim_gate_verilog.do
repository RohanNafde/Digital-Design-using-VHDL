transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {Expt_2.vo}

vcom -93 -work work {C:/IIT/EE/Labs/Lab_4/Expt_2/Testbench.vhd}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
