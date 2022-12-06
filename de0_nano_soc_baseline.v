module de0_nano_soc_baseline(


	//////////// CLOCK //////////
	input 		          		CLOCK_50,
	
	//////////// KEY ////////////
	/* 3.3-V LVTTL */
	input				[1:0]			KEY,
	
	//////////// LED ////////////
	/* 3.3-V LVTTL */
	output			[7:0]			LED,
	
	//////////// SW ////////////
	/* 3.3-V LVTTL */
	input				[3:0]			SW

);

PROCESSOR PROCESSOR_inst0(CLOCK_50, LED);

endmodule