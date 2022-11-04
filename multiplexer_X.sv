module multiplexer_X(
	input [31:0] ALU_output,
	input [31:0] data_memory,
	input choose,
	output reg [31:0] result
);

always_comb begin
	case(choose)
		0: 		result = ALU_output;
		1: 		result = data_memory;
		default: result = 0;
	endcase
end

endmodule