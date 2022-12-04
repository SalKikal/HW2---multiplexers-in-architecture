module flags(
	input Upd_flags,
	input [3:0] N_flags,
	output reg [3:0] O_flags, 
                output reg Carry
);

always @(posedge Upd_flags) begin
	O_flags = N_flags;
end

endmodule
