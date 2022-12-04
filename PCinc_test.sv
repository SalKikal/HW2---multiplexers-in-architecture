module PCinc_test();

logic clock;
logic [31:0] O_addr;
logic [31:0] N_addr;
logic wen_ARd;
logic [3:0] ARn, ARs, ARm, ARd;
logic [31:0] Rn, Rs, Rm, Rd, Rd_data, PC_out, PC_next;

PCinc PCinc_tst(clock, O_addr, N_addr);
reg_file reg_file_tst(clock, wen_ARd, ARn, ARs, ARm, ARd, Rn, Rs, Rm, Rd, Rd_data, O_addr, N_addr);

always begin 
 #1 clock = ~clock;
end

initial begin
	clock = 0;
	

end

endmodule