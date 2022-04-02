transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {F:/Practica10/ControlAparcamiento.vhd}
vcom -93 -work work {F:/Practica10/detectorflanco.vhd}
vcom -93 -work work {F:/Practica10/bina7seg.vhd}

vcom -93 -work work {F:/Practica10/simulation/modelsim/Practica10.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Practica10

add wave *
view structure
view signals
run -all
