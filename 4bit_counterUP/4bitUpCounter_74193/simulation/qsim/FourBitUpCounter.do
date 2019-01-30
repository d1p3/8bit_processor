onerror {quit -f}
vlib work
vlog -work work FourBitUpCounter.vo
vlog -work work FourBitUpCounter.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.FourBitUpCounter_vlg_vec_tst
vcd file -direction FourBitUpCounter.msim.vcd
vcd add -internal FourBitUpCounter_vlg_vec_tst/*
vcd add -internal FourBitUpCounter_vlg_vec_tst/i1/*
add wave /*
run -all
