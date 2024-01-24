!/bin/bash
rm -f uart.json uart.asc uart.bin *.log
yosys -l yosys-uart.log -p "read_verilog uart.v; synth_ice40 -top uart -json uart.json"
nextpnr-ice40 --hx8k --pcf-allow-unconstrained --package ct256 -l ../place_and_route.log --pcf helloworld.pcf --json uart.json --asc uart.asc
icepack uart.asc uart.bin
icetime -d hx8k -c 100 uart.asc
