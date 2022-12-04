module rot_right(
	input [31:0] in_data,
	input [4:0] amt,
	output reg [31:0] o_data
);

always_comb begin
	case(amt)
		5'b00000: o_data <= in_data;
		5'b00001: begin 
						o_data[30:0] <= in_data[31:1];
						o_data[31] <= in_data[0];
					 end
		5'b00010: begin 
						o_data[29:0] <= in_data[31:2];
						o_data[31:30] <= in_data[1:0];
					 end
		5'b00011: begin 
						o_data[28:0] <= in_data[31:3];
						o_data[31:29] <= in_data[2:0];
					 end
		5'b00100: begin 
						o_data[27:0] <= in_data[31:4];
						o_data[31:28] <= in_data[3:0];
					 end
		5'b00101: begin 
						o_data[26:0] <= in_data[31:5];
						o_data[31:27] <= in_data[4:0];
					 end
		5'b00110: begin 
						o_data[25:0] <= in_data[31:6];
						o_data[31:26] <= in_data[5:0];
					 end
		5'b00111: begin 
						o_data[24:0] <= in_data[31:7];
						o_data[31:25] <= in_data[6:0];
					 end
		5'b01000: begin 
						o_data[23:0] <= in_data[31:8];
						o_data[31:24] <= in_data[7:0];
					 end
		5'b01001: begin 
						o_data[22:0] <= in_data[31:9];
						o_data[31:23] <= in_data[8:0];
					 end
		5'b01010: begin 
						o_data[21:0] <= in_data[31:10];
						o_data[31:22] <= in_data[9:0];
					 end
		5'b01011: begin 
						o_data[20:0] <= in_data[31:11];
						o_data[31:21] <= in_data[10:0];
					 end
		5'b01100: begin 
						o_data[19:0] <= in_data[31:12];
						o_data[31:20] <= in_data[11:0];
					 end
		5'b01101: begin 
						o_data[18:0] <= in_data[31:13];
						o_data[31:19] <= in_data[12:0];
					 end
		5'b01110: begin 
						o_data[17:0] <= in_data[31:14];
						o_data[31:18] <= in_data[13:0];
					 end
		5'b01111: begin 
						o_data[16:0] <= in_data[31:15];
						o_data[31:17] <= in_data[14:0];
					 end
		5'b10000: begin 
						o_data[15:0] <= in_data[31:16];
						o_data[31:16] <= in_data[15:0];
					 end
		5'b10001: begin 
						o_data[14:0] <= in_data[31:17];
						o_data[31:15] <= in_data[16:0];
					 end
		5'b10010: begin 
						o_data[13:0] <= in_data[31:18];
						o_data[31:14] <= in_data[17:0];
					 end
		5'b10011: begin 
						o_data[12:0] <= in_data[31:19];
						o_data[31:13] <= in_data[18:0];
					 end
		5'b10100: begin 
						o_data[11:0] <= in_data[31:20];
						o_data[31:12] <= in_data[19:0];
					 end
		5'b10101: begin 
						o_data[10:0] <= in_data[31:21];
						o_data[31:11] <= in_data[20:0];
					 end
		5'b10110: begin 
						o_data[9:0] <= in_data[31:22];
						o_data[31:10] <= in_data[21:0];
					 end
		5'b10111: begin 
						o_data[8:0] <= in_data[31:23];
						o_data[31:9] <= in_data[22:0];
					 end
		5'b11000: begin 
						o_data[7:0] <= in_data[31:24];
						o_data[31:8] <= in_data[23:0];
					 end
		5'b11001: begin 
						o_data[6:0] <= in_data[31:25];
						o_data[31:7] <= in_data[24:0];
					 end
		5'b11010: begin 
						o_data[5:0] <= in_data[31:26];
						o_data[31:6] <= in_data[25:0];
					 end
		5'b11011: begin 
						o_data[4:0] <= in_data[31:27];
						o_data[31:5] <= in_data[26:0];
					 end
		5'b11100: begin 
						o_data[3:0] <= in_data[31:28];
						o_data[31:4] <= in_data[27:0];
					 end
		5'b11101: begin 
						o_data[2:0] <= in_data[31:29];
						o_data[31:3] <= in_data[28:0];
					 end
		5'b11110: begin 
						o_data[1:0] <= in_data[31:30];
						o_data[31:2] <= in_data[29:0];
					 end
		5'b11111: begin 
						o_data[0] <= in_data[31];
						o_data[31:1] <= in_data[30:0];
					 end
		default: o_data <= 0;
	endcase
end

endmodule