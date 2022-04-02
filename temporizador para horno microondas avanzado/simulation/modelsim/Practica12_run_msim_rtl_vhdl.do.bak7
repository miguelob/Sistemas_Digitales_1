transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {H:/Practica12/UnidadControl.vhd}
vcom -93 -work work {H:/Practica12/DetectorFlanco.vhd}
vcom -93 -work work {H:/Practica12/ContadorMod50M.vhd}
vcom -93 -work work {H:/Practica12/ContadorDescMod10.vhd}
vcom -93 -work work {H:/Practica12/ContadorDescMod6.vhd}
vcom -93 -work work {H:/Practica12/BinA7Seg.vhd}
vcom -93 -work work {H:/Practica12/Microondas.vhd}
vcom -93 -work work {H:/Practica12/temporizador.vhd}

vcom -93 -work work {H:/Practica12/simulation/modelsim/Microondas.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Microondas_vhd_tst

add wave *
view structure
view signals
run -all
