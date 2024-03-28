#!/bin/bash
yosys -l yosys-fsm.log -p "read_verilog fsm.v; synth_ice40 -top top -json fsm.json"
nextpnr-ice40 --hx8k --pcf-allow-unconstrained --package ct256 -l place_and_route.log --pcf helloworld.pcf --json fsm.json --asc fsm.asc
icepack fsm.asc fsm.bin
icetime -d hx8k -c 100 fsm.asc
