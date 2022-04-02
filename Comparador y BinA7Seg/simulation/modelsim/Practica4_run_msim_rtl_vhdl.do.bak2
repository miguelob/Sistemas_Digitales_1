transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {H:/Practica4/BinA7Seg.vhd}
vcom -93 -work work {H:/Practica4/Comparador4Bits.vhd}

vcom -93 -work work {H:/Practica4/simulation/modelsim/Practica4.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Practica4

add wave *
view structure
view signals
run -all
