module Controller(
	input clock,
	input [31:0] instr,
	input [3:0] curr_flags,
	output wen_ARd, wen_data_mem, Upd_flags,
	output [7:0] ALU_ctrl,
	output reg_file_ctrl_BL,
	output Y_mux_sel, X_mux_sel,
	output [1:0] src1mux_sel
);



endmodule