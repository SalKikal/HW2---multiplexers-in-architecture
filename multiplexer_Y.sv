module multiplexer_Y(
	input [3:0] ard,
	input choose,
	output reg [3:0] result
);

always_comb begin
	case(choose)
		0: 		result = ard;
		1: 		result = 15;
		default: result = 0;
	endcase
end

endmodule