/* Machine-generated using Migen */
module top(
	output reg s,
	output reg [7:0] counter,
	output is_el,
	output reg is_el_1,
	output is_el_2,
	output reg is_el_3,
	input sys_clk,
	input sys_rst
);

reg a0 = 1'd0;
reg a1 = 1'd0;
reg a2 = 1'd0;
reg a3 = 1'd0;
reg a4 = 1'd0;
reg a5 = 1'd0;
reg a6 = 1'd0;
reg state = 1'd0;
reg next_state;
reg [7:0] counter_next_value;
reg counter_next_value_ce;
reg next_value;
reg next_value_ce;
reg array_muxed = 1'd0;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign is_el_2 = ((state == 1'd0) & (~(next_state == 1'd0)));
assign is_el = ((~(state == 1'd0)) & (next_state == 1'd0));

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	s <= 1'd0;
	next_state <= 1'd0;
	counter_next_value <= 8'd0;
	counter_next_value_ce <= 1'd0;
	next_value <= 1'd0;
	next_value_ce <= 1'd0;
	next_state <= state;
	case (state)
		1'd1: begin
			s <= 1'd0;
			counter_next_value <= (counter + 1'd1);
			counter_next_value_ce <= 1'd1;
			next_value <= 7'd89;
			next_value_ce <= 1'd1;
			next_state <= 1'd0;
		end
		default: begin
			s <= 1'd1;
			next_state <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end

always @(posedge sys_clk) begin
	is_el_1 <= is_el;
	is_el_3 <= is_el_2;
	state <= next_state;
	if (counter_next_value_ce) begin
		counter <= counter_next_value;
	end
	if (next_value_ce) begin
		array_muxed = next_value;
		case (counter)
			1'd0: begin
				a0 <= array_muxed;
			end
			1'd1: begin
				a1 <= array_muxed;
			end
			2'd2: begin
				a2 <= array_muxed;
			end
			2'd3: begin
				a3 <= array_muxed;
			end
			3'd4: begin
				a4 <= array_muxed;
			end
			3'd5: begin
				a5 <= array_muxed;
			end
			default: begin
				a6 <= array_muxed;
			end
		endcase
	end
	if (sys_rst) begin
		counter <= 8'd0;
		a0 <= 1'd0;
		a1 <= 1'd0;
		a2 <= 1'd0;
		a3 <= 1'd0;
		a4 <= 1'd0;
		a5 <= 1'd0;
		a6 <= 1'd0;
		is_el_1 <= 1'd1;
		is_el_3 <= 1'd0;
		state <= 1'd0;
	end
end

endmodule


