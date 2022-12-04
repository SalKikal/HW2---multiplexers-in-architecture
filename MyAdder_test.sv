module MyAdder_test();

logic clock;
logic [31:0] A, B, S;
logic cout;

MyAdder MyAdder_tst(A, B, S, cout);

always begin 
 #1 clock = ~clock;
end

initial begin
	clock = 0;
	A = 2593;
	B = 2940;
	
	#5 A = 32'hfffffffe;
	   B = 1;
	#5 B = 2;
	
end

endmodule