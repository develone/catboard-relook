/* Machine-generated using Migen */
module top(
	input i,
	output o,
	input from_clk,
	input from_rst,
	input to_clk,
	input to_rst
);

reg toggle_i = 1'd0;
wire toggle_o;
reg toggle_o_r = 1'd0;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg regs0 = 1'd0;
(* async_reg = "true", dont_touch = "true" *) reg regs1 = 1'd0;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign o = (toggle_o ^ toggle_o_r);
assign toggle_o = regs1;

always @(posedge from_clk) begin
	if (i) begin
		toggle_i <= (~toggle_i);
	end
	if (from_rst) begin
	end
end

always @(posedge to_clk) begin
	toggle_o_r <= toggle_o;
	if (to_rst) begin
	end
	regs0 <= toggle_i;
	regs1 <= regs0;
end

endmodule


