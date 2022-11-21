module TB_regFile(); 

  reg clk=0; 

  logic writeEnabler; 

  logic [31:0] PCNxt; 

  logic [3:0] mux; 

   logic [31:0] RdData; 

  logic [3:0] AddressRn; 

  logic [3:0] AddressRs; 

  logic [3:0] AddressRm; 

  logic [31:0] RM; 

  logic [31:0] RS; 

  logic [31:0] RN; 

  logic [31:0] RD; 

  logic [31:0] PCout; 

   

  registerFile registerFile_instance(clk, writeEnabler, PCNxt, mux, RdData, AddressRn,AddressRs,AddressRm, RM,RS,RN,RD,PCout); 

  always #20 clk <= ~clk; 

      initial begin  

      $dumpfile("dump.vcd");  

      $dumpvars(1); 

         

        writeEnabler=1; 

        AddressRs=0; 

        AddressRn=0; 

        AddressRm=0; 

        mux=3;; 

        PCNxt=87; 

        RdData=94; 

      #40 

        $display ("The input ----> %d,%d,%d,%d,%d,%d,%d,%d", clk,writeEnabler, AddressRn,AddressRs,AddressRm,mux, PCNxt,RdData); 

        $display("The output ----> %d,%d,%d,%d,%d",RN,RS,RM,RD,PCout); 

         

        AddressRs=3; 

        mux=2; 

        RdData=23; 

        #40 

        $display ("The input ---> %d,%d,%d,%d,%d,%d,%d,%d", clk,writeEnabler, AddressRn,AddressRs,AddressRm,mux,PCNxt,RdData); 

        $display("The output ---> %d,%d,%d,%d,%d",RN,RS,RM,RD,PCout); 

  

        AddressRn=2; 

        mux=6; 

        RdData=24; 

      #40 

        $display ("The input ---> %d,%d,%d,%d,%d,%d,%d,%d", clk,writeEnabler, AddressRn,AddressRs,AddressRm,mux,PCNxt,RdData); 

        $display("The output ---> %d,%d,%d,%d,%d",RN,RS,RM,RD,PCout); 

         

        AddressRm=6; 

        mux=1; 

        RdData=63; 

      #40 

        $display ("The input ---> %d,%d,%d,%d,%d,%d,%d,%d", clk,writeEnabler, AddressRn,AddressRs,AddressRm,mux,PCNxt,RdData); 

        $display("The output ----> %d,%d,%d,%d,%d",RN,RS,RM,RD,PCout); 

         

        mux=8; 

        writeEnabler=0; 

        RdData=49; 

      #40 

        $display ("input was %d,%d,%d,%d,%d,%d,%d,%d", clk,writeEnabler, AddressRn,AddressRs,AddressRm,mux,PCNxt,RdData); 

        $display("The output ---> %d,%d,%d,%d,%d",RN,RS,RM,RD,PCout); 

        

    end 

endmodule 
