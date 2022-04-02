transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Practica10.vho}

vcom -93 -work work {F:/Practica10/simulation/modelsim/Practica10.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=Practica10_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  Practica10

add wave *
view structure
view signals
run -all
