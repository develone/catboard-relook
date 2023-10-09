module helloworld_tb();
wire o_ledg,i_rts,i_uart_rx,o_cts,o_uart_tx;
reg i_clk;
helloworld helloworld_ins(i_clk,o_ledg,i_rts, i_uart_rx, o_cts,o_uart_tx);

initial
begin 
forever begin
i_clk = 0;
#10 i_clk = ~i_clk;
end
end

initial
begin
	$dumpfile("helloworld.vcd");
	$dumpvars(0,helloworld_ins);
end
endmodule