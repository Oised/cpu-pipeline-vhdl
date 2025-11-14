transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/quartus directory/proj2_cpu_pipeline_s2_25/cpu-pipeline-vhdl/pipeline_cpu.vhd}

