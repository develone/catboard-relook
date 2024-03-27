/* Machine-generated using Migen */
module ParentModule(
	input input0,
	input [1:0] input1,
	input [2:0] input2,
	input [3:0] input3,
	output output0,
	output [1:0] output1,
	output [2:0] output2,
	output [3:0] output3,
	input sys_clk,
	input sys_rst
);

wire trans0;
wire [1:0] trans1;
wire [2:0] trans2;
wire [3:0] trans3;


ChildModule ChildModule(
	.input0(input0),
	.input1(input1),
	.input2(input2),
	.input3(input3),
	.master_clk(sys_clk),
	.master_rst(sys_rst),
	.output0(trans0),
	.output1(trans1),
	.output2(trans2),
	.output3(trans3)
);

ChildModule ChildModule_1(
	.input0(trans0),
	.input1(trans1),
	.input2(trans2),
	.input3(trans3),
	.master_clk(sys_clk),
	.master_rst(sys_rst),
	.output0(output0),
	.output1(output1),
	.output2(output2),
	.output3(output3)
);

endmodule
