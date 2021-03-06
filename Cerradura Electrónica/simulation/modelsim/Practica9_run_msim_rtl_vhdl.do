transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {H:/Practica9/DetectorFlanco.vhd}
vcom -93 -work work {H:/Practica9/DetectorSecuenciaF1.vhd}

vcom -93 -work work {H:/Practica9/simulation/modelsim/Practica9.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Practica9

add wave *
view structure
view signals
run -all
