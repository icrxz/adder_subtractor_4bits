transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Faculdade/8Sem/Arquitetura 2/Projetos/Quartus/adder_subtractor_4bits/display_7seg.vhd}
vcom -93 -work work {E:/Faculdade/8Sem/Arquitetura 2/Projetos/Quartus/adder_subtractor_4bits/reg.vhd}
vcom -93 -work work {E:/Faculdade/8Sem/Arquitetura 2/Projetos/Quartus/adder_subtractor_4bits/adder_subtractor_4bits.vhd}
vcom -93 -work work {E:/Faculdade/8Sem/Arquitetura 2/Projetos/Quartus/adder_subtractor_4bits/arithmetic.vhd}

