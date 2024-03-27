/* Machine-generated using Migen */
module top(
	input sys_clk,
	input sys_rst
);

reg x = 1'd0;
reg y = 1'd0;
wire out;
reg my_2d_array0 = 1'd0;
reg my_2d_array1 = 1'd0;
reg my_2d_array2 = 1'd0;
reg my_2d_array3 = 1'd0;
reg we = 1'd0;
reg inp = 1'd0;
reg ina0 = 1'd0;
reg ina1 = 1'd0;
reg outa0;
reg outa1;
reg comb_array_muxed0;
reg comb_array_muxed1;
reg comb_array_muxed2;
reg sync_array_muxed0 = 1'd0;
reg sync_array_muxed1 = 1'd0;
reg sync_array_muxed2 = 1'd0;
reg array_muxed0;
wire array_muxed1;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign out = comb_array_muxed0;

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	comb_array_muxed1 <= 1'd0;
	case (y)
		1'd0: begin
			comb_array_muxed1 <= my_2d_array0;
		end
		default: begin
			comb_array_muxed1 <= my_2d_array1;
		end
	endcase
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	comb_array_muxed2 <= 1'd0;
	case (y)
		1'd0: begin
			comb_array_muxed2 <= my_2d_array2;
		end
		default: begin
			comb_array_muxed2 <= my_2d_array3;
		end
	endcase
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_2;
// synthesis translate_on
always @(*) begin
	comb_array_muxed0 <= 1'd0;
	case (x)
		1'd0: begin
			comb_array_muxed0 <= comb_array_muxed1;
		end
		default: begin
			comb_array_muxed0 <= comb_array_muxed2;
		end
	endcase
// synthesis translate_off
	dummy_d_2 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_3;
// synthesis translate_on
always @(*) begin
	array_muxed0 <= 1'd0;
	case (x)
		1'd0: begin
			array_muxed0 <= ina0;
		end
		default: begin
			array_muxed0 <= ina1;
		end
	endcase
// synthesis translate_off
	dummy_d_3 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_4;
// synthesis translate_on
always @(*) begin
	outa0 <= 1'd0;
	outa1 <= 1'd0;
	case (y)
		1'd0: begin
			outa0 <= array_muxed1;
		end
		default: begin
			outa1 <= array_muxed1;
		end
	endcase
// synthesis translate_off
	dummy_d_4 <= dummy_s;
// synthesis translate_on
end

always @(posedge sys_clk) begin
	if (we) begin
		sync_array_muxed0 = inp;
		case (x)
			1'd0: begin
				sync_array_muxed1 = sync_array_muxed0;
				case (y)
					1'd0: begin
						my_2d_array0 <= sync_array_muxed1;
					end
					default: begin
						my_2d_array1 <= sync_array_muxed1;
					end
				endcase
			end
			default: begin
				sync_array_muxed2 = sync_array_muxed0;
				case (y)
					1'd0: begin
						my_2d_array2 <= sync_array_muxed2;
					end
					default: begin
						my_2d_array3 <= sync_array_muxed2;
					end
				endcase
			end
		endcase
	end
	if (sys_rst) begin
		my_2d_array0 <= 1'd0;
		my_2d_array1 <= 1'd0;
		my_2d_array2 <= 1'd0;
		my_2d_array3 <= 1'd0;
	end
end

test test(
	.I(array_muxed0),
	.O(array_muxed1)
);

endmodule


