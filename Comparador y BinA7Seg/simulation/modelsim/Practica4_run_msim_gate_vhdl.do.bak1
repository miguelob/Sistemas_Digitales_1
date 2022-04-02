transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Practica4.vho}

vcom -93 -work work {D:/Temp/Grupo2/Practica4/simulation/modelsim/Practica4.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=Practica4_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  Practica4

add wave *
view structure
view signals
run -all
