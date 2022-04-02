transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {F:/Practica6 .1/Multiplicador5Bits.vhd}
vcom -93 -work work {F:/Practica6 .1/Multiplicador5BitsComp.vhd}
vcom -93 -work work {F:/Practica6 .1/bina7seg.vhd}

vcom -93 -work work {F:/Practica6 .1/simulation/modelsim/Practica6.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Practica6

add wave *
view structure
view signals
run -all
