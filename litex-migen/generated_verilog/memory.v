/* Machine-generated using Migen */
module top(
	input [6:0] adr,
	output [31:0] dat_r,
	input [3:0] we,
	input [31:0] dat_w,
	input [6:0] adr_1,
	output [31:0] dat_r_1,
	input re,
	input rd_clk,
	input rd_rst,
	input sys_clk,
	input sys_rst
);



reg [31:0] mem[0:99];
reg [6:0] memadr;
reg [6:0] memadr_1;
always @(posedge sys_clk) begin
	if (we[0])
		mem[adr][7:0] <= dat_w[7:0];
	if (we[1])
		mem[adr][15:8] <= dat_w[15:8];
	if (we[2])
		mem[adr][23:16] <= dat_w[23:16];
	if (we[3])
		mem[adr][31:24] <= dat_w[31:24];
	memadr <= adr;
end

always @(posedge rd_clk) begin
	if (re)
		memadr_1 <= adr_1;
end

assign dat_r = mem[memadr];
assign dat_r_1 = mem[memadr_1];

initial begin
	$readmemh("mem.init", mem);
end

endmodule

mem.init:
00000005
00000012
00000020

