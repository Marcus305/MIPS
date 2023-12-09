transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/maxv_ver
vmap maxv_ver ./verilog_libs/maxv_ver
vlog -vlog01compat -work maxv_ver {/opt/intelFPGA_lite/22.1/quartus/eda/sim_lib/maxv_atoms.v}

if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {MIPS.vo}

vlog -vlog01compat -work work +incdir+/home/marcus/projetos/Verilog/TP_ARQIII {/home/marcus/projetos/Verilog/TP_ARQIII/MIPS_TB.v}

vsim -t 1ps -L maxv_ver -L gate_work -L work -voptargs="+acc"  MIPS_TB

add wave *
view structure
view signals
run -all
