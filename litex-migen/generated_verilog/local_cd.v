/* Machine-generated using Migen */
module top(
	input foo_sys_clk,
	input bar_sys_clk
);

reg foo_start_i = 1'd0;
reg [4:0] foo_dividend_i = 5'd0;
reg [4:0] foo_divisor_i = 5'd0;
wire foo_ready_o;
wire [4:0] foo_quotient_o;
wire [4:0] foo_remainder_o;
reg [9:0] foo_qr = 10'd0;
reg [2:0] foo_counter = 3'd0;
reg [4:0] foo_divisor_r = 5'd0;
wire [5:0] foo_diff;
reg bar_start_i = 1'd0;
reg [4:0] bar_dividend_i = 5'd0;
reg [4:0] bar_divisor_i = 5'd0;
wire bar_ready_o;
wire [4:0] bar_quotient_o;
wire [4:0] bar_remainder_o;
reg [9:0] bar_qr = 10'd0;
reg [2:0] bar_counter = 3'd0;
reg [4:0] bar_divisor_r = 5'd0;
wire [5:0] bar_diff;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign foo_quotient_o = foo_qr[4:0];
assign foo_remainder_o = foo_qr[9:5];
assign foo_ready_o = (foo_counter == 1'd0);
assign foo_diff = (foo_qr[9:4] - foo_divisor_r);
assign bar_quotient_o = bar_qr[4:0];
assign bar_remainder_o = bar_qr[9:5];
assign bar_ready_o = (bar_counter == 1'd0);
assign bar_diff = (bar_qr[9:4] - bar_divisor_r);

always @(posedge bar_sys_clk) begin
	if (bar_start_i) begin
		bar_counter <= 3'd5;
		bar_qr <= bar_dividend_i;
		bar_divisor_r <= bar_divisor_i;
	end else begin
		if ((~bar_ready_o)) begin
			if (bar_diff[5]) begin
				bar_qr <= {bar_qr[8:0], 1'd0};
			end else begin
				bar_qr <= {bar_diff[4:0], bar_qr[3:0], 1'd1};
			end
			bar_counter <= (bar_counter - 1'd1);
		end
	end
end

always @(posedge foo_sys_clk) begin
	if (foo_start_i) begin
		foo_counter <= 3'd5;
		foo_qr <= foo_dividend_i;
		foo_divisor_r <= foo_divisor_i;
	end else begin
		if ((~foo_ready_o)) begin
			if (foo_diff[5]) begin
				foo_qr <= {foo_qr[8:0], 1'd0};
			end else begin
				foo_qr <= {foo_diff[4:0], foo_qr[3:0], 1'd1};
			end
			foo_counter <= (foo_counter - 1'd1);
		end
	end
end

endmodule


