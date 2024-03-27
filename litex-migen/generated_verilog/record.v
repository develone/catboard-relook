/* Machine-generated using Migen */
module top(

);

reg [9:0] master_position_x = 10'd0;
reg [9:0] master_position_y = 10'd0;
reg [31:0] master_color = 32'd0;
reg master_stb = 1'd0;
wire master_ack;
wire [9:0] slave_position_x;
wire [9:0] slave_position_y;
wire [31:0] slave_color;
wire slave_stb;
reg slave_ack = 1'd0;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign slave_position_x = master_position_x;
assign slave_position_y = master_position_y;
assign slave_color = master_color;
assign slave_stb = master_stb;
assign master_ack = slave_ack;

endmodule


54
[('position', [('x', 10, 2)]), ('color', 32, 2)]
