onerror {quit -f}
vlib work
vlog -work work pi_po_register_74175.vo
vlog -work work pi_po_register_74175.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.pi_po_register_74175_vlg_vec_tst
vcd file -direction pi_po_register_74175.msim.vcd
vcd add -internal pi_po_register_74175_vlg_vec_tst/*
vcd add -internal pi_po_register_74175_vlg_vec_tst/i1/*
add wave /*
run -all
