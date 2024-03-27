/* Machine-generated using Migen */
module top(
	inout [5:0] pad,
	input [5:0] o,
	input oe,
	output [5:0] i
);



assign pad = oe ? o : 6'bz;
assign i = pad;

endmodule


