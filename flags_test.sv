module flags_test();

logic clock;
logic Upd_flags;
logic [3:0] N_flags, O_flags;

flags flags_tst(Upd_flags, N_flags, O_flags);

always begin 
 #1 clock = ~clock;
end

initial begin
	clock = 0;
	Upd_flags = 0;
	N_flags = 4'b1001;
	
	#14 Upd_flags = 1;
	#15 N_flags = 4'b0110;
	#14 Upd_flags = 0;
	#30 N_flags = 4'b1100;
	#14  Upd_flags = 1;
	
end

endmodule