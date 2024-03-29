# set the working dir, where all compiled verilog goes
vlib work

vlog four_adder.v

vsim four_adder_run

#log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0

force {SW[4]} 1
force {SW[5]} 1
force {SW[6]} 1
force {SW[7]} 1

force {SW[8]} 0
run 10ns

force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1

force {SW[4]} 0
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 0

force {SW[8]} 1
run 10ns

force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1

force {SW[4]} 1
force {SW[5]} 1
force {SW[6]} 1
force {SW[7]} 1

force {SW[8]} 1
run 10ns