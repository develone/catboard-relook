/* Machine-generated using Migen */
module top(

);

wire [2:0] a;
wire [3:0] b;
wire [4:0] c;
wire [6:0] d;
wire [7:0] lhs_slice_proxy0;
wire [2:0] lhs_slice_proxy1;
wire [6:0] lhs_slice_proxy2;
wire [4:0] rhs_slice_proxy0;
wire [1:0] rhs_slice_proxy1;
wire [2:0] rhs_slice_proxy2;
wire [4:0] rhs_slice_proxy3;
wire [7:0] rhs_slice_proxy4;
wire [2:0] rhs_slice_proxy5;
wire [6:0] rhs_slice_proxy6;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign lhs_slice_proxy0[7:3] = 1'd0;
assign d = {rhs_slice_proxy0[2:0], {d[0], d[1], d[2], d[3], d[4], d[5], d[6]}};
assign c[2:0] = lhs_slice_proxy1;
assign {b, a} = lhs_slice_proxy2;
assign {lhs_slice_proxy2[5:0], lhs_slice_proxy1[1:0]} = lhs_slice_proxy0;
assign rhs_slice_proxy2 = c[2:0];
assign rhs_slice_proxy1 = rhs_slice_proxy2[1:0];
assign rhs_slice_proxy5 = c[2:0];
assign rhs_slice_proxy6 = {b, a};
assign rhs_slice_proxy4 = {rhs_slice_proxy6[5:0], rhs_slice_proxy5[1:0]};
assign rhs_slice_proxy3 = rhs_slice_proxy4[7:3];
assign rhs_slice_proxy0 = {rhs_slice_proxy3[4:1], rhs_slice_proxy1[0]};

endmodule


