onerror {quit -f}
vlib work
vlog -work work TestVerilog.vo
vlog -work work TestVerilog.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.TestVerilog_vlg_vec_tst
vcd file -direction TestVerilog.msim.vcd
vcd add -internal TestVerilog_vlg_vec_tst/*
vcd add -internal TestVerilog_vlg_vec_tst/i1/*
add wave /*
run -all
