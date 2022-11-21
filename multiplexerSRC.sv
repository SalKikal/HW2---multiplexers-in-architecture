module multiplexerSRC(
	input [31:0] Rn,
	input [31:0] Rs,
	input [31:0] output, //wrong naming
	input [1:0] choose,
	output reg [31:0] result
);

always_comb begin
	case(choose)
		0: 		result = Rn;
		1: 		result = Rs;
		2: 		result = output; //wroooong
		default: result = 0;
	endcase
end	

endmodule
