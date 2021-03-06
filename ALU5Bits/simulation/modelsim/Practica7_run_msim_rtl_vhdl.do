transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {H:/Practica7/Mux3a15bits.vhd}
vcom -93 -work work {H:/Practica7/UnidadControl.vhd}
vcom -93 -work work {H:/Practica7/Mux2a15bits.vhd}
vcom -93 -work work {H:/Practica7/Mux2a11bit.vhd}
vcom -93 -work work {H:/Practica7/FuncLogic.vhd}
vcom -93 -work work {H:/Practica7/Multiplicador.vhd}
vcom -93 -work work {H:/Practica7/SumadorRestador.vhd}
vcom -93 -work work {H:/Practica7/alucompleto.vhd}
vcom -93 -work work {H:/Practica7/sumador1bit.vhd}
vcom -93 -work work {H:/Practica7/bina7seg.vhd}

vcom -93 -work work {H:/Practica7/simulation/modelsim/Practica7.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Practica7

add wave *
view structure
view signals
run -all
