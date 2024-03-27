/* Machine-generated using Migen */
module top(
	input start_i,
	input [15:0] dividend_i,
	input [15:0] divisor_i,
	output ready_o,
	output [15:0] quotient_o,
	output [15:0] remainder_o,
	input start_i_1,
	input [15:0] dividend_i_1,
	input [15:0] divisor_i_1,
	output ready_o_1,
	output [15:0] quotient_o_1,
	output [15:0] remainder_o_1,
	input ce,
	input reset,
	input sys_clk,
	input sys_rst
);

reg [31:0] d1_qr = 32'd0;
reg [4:0] d1_counter = 5'd0;
reg [15:0] d1_divisor_r = 16'd0;
wire [16:0] d1_diff;
reg [31:0] d2_qr = 32'd0;
reg [4:0] d2_counter = 5'd0;
reg [15:0] d2_divisor_r = 16'd0;
wire [16:0] d2_diff;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign quotient_o = d1_qr[15:0];
assign remainder_o = d1_qr[31:16];
assign ready_o = (d1_counter == 1'd0);
assign d1_diff = (d1_qr[31:15] - d1_divisor_r);
assign quotient_o_1 = d2_qr[15:0];
assign remainder_o_1 = d2_qr[31:16];
assign ready_o_1 = (d2_counter == 1'd0);
assign d2_diff = (d2_qr[31:15] - d2_divisor_r);

always @(posedge sys_clk) begin
	if (ce) begin
		if (start_i) begin
			d1_counter <= 5'd16;
			d1_qr <= dividend_i;
			d1_divisor_r <= divisor_i;
		end else begin
			if ((~ready_o)) begin
				if (d1_diff[16]) begin
					d1_qr <= {d1_qr[30:0], 1'd0};
				end else begin
					d1_qr <= {d1_diff[15:0], d1_qr[14:0], 1'd1};
				end
				d1_counter <= (d1_counter - 1'd1);
			end
		end
		if (start_i_1) begin
			d2_counter <= 5'd16;
			d2_qr <= dividend_i_1;
			d2_divisor_r <= divisor_i_1;
		end else begin
			if ((~ready_o_1)) begin
				if (d2_diff[16]) begin
					d2_qr <= {d2_qr[30:0], 1'd0};
				end else begin
					d2_qr <= {d2_diff[15:0], d2_qr[14:0], 1'd1};
				end
				d2_counter <= (d2_counter - 1'd1);
			end
		end
	end
	if (reset) begin
		d1_qr <= 32'd0;
		d1_counter <= 5'd0;
		d1_divisor_r <= 16'd0;
		d2_qr <= 32'd0;
		d2_counter <= 5'd0;
		d2_divisor_r <= 16'd0;
	end
	if (sys_rst) begin
		d1_qr <= 32'd0;
		d1_counter <= 5'd0;
		d1_divisor_r <= 16'd0;
		d2_qr <= 32'd0;
		d2_counter <= 5'd0;
		d2_divisor_r <= 16'd0;
	end
end

endmodule


