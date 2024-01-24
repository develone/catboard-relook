!/bin/bash
rm -f uart.json uart.asc uart.bin *.log
export PIN_DEF = $(CURDIR)/constraint/helloworld.pcf
export DEVICE = hx8k
yosys -l yosys-uart.log -p "read_verilog top.v reset.v uart.v rom.v  ; synth_ice40 -top top -json top.json"
nextpnr-ice40 --hx8k --pcf-allow-unconstrained --package ct256 -l ../place_and_route.log --pcf helloworld.pcf --json top.json --asc top.asc
icepack top.asc top.bin
icetime -d hx8k -c 100 top.asc
