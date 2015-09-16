transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/CODE/Embedded\ Systems/Lab2Problem2 {C:/CODE/Embedded Systems/Lab2Problem2/fulladder.v}
vlog -vlog01compat -work work +incdir+C:/CODE/Embedded\ Systems/Lab2Problem2 {C:/CODE/Embedded Systems/Lab2Problem2/fulladder4bits.v}
vlog -sv -work work +incdir+C:/CODE/Embedded\ Systems/Lab2Problem2 {C:/CODE/Embedded Systems/Lab2Problem2/Lab2Problem2.sv}

