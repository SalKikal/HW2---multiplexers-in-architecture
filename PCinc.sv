module PCinc(
	input clock,
	input [31:0] O_addr,
	output [31:0] N_addr
);

assign N_addr = O_addr + 1;

endmodule