transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/CODE/Embedded\ Systems/Lab4SDRAM {C:/CODE/Embedded Systems/Lab4SDRAM/lights.v}
vlog -vlog01compat -work work +incdir+C:/CODE/Embedded\ Systems/Lab4SDRAM/BoardConfigQsys/synthesis/submodules {C:/CODE/Embedded Systems/Lab4SDRAM/BoardConfigQsys/synthesis/submodules/BoardConfigQsys_nios2_gen2_0_cpu.v}

