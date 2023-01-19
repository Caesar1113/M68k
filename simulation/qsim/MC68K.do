onerror {exit -code 1}
vlib work
vcom -work work MC68K.vho
vcom -work work Waveform68k-V15.0-DE1SoC_Short7us.vwf.vht
vsim -novopt -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.MC68K_vhd_vec_tst
vcd file -direction MC68K.msim.vcd
vcd add -internal MC68K_vhd_vec_tst/*
vcd add -internal MC68K_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
