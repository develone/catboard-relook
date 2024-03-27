/* Machine-generated using Migen */
module ChildModule(
	input input0,
	input [1:0] input1,
	input [2:0] input2,
	input [3:0] input3,
	output reg output0,
	output reg [1:0] output1,
	output reg [2:0] output2,
	output reg [3:0] output3,
	input master_clk,
	input master_rst
);



always @(posedge master_clk) begin
	output0 <= input0;
	output1 <= input1;
	output2 <= input2;
	output3 <= input3;
	if (master_rst) begin
		output0 <= 1'd0;
		output1 <= 2'd0;
		output2 <= 3'd0;
		output3 <= 4'd0;
	end
end

endmodule
