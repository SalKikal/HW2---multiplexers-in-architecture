module TB_dataMemory();
  
  reg clk = 0;
  logic [31:0]rd;
  logic [31:0]address;
  logic writeEnblr;
  logic [31:0] outpt;
  
  dataMemory dataMem_instance(clk,rd,address,writeEnblr,outpt);
  always #10 clk <= ~clk;
      initial begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #20
      rd= 69;
      address = 6;
      writeEnblr = 1;
      #20
        $display ("The input ---> %d,%d,%d,%d ", clk,rd,address,writeEnblr);
        $display("The output ---> %d", outpt);
      #20
      rd= 12345;
      address = 6;
      writeEnblr = 0;
      #20
        $display ("The input ---> %d,%d,%d,%d ", clk,rd,address,writeEnblr);
        $display("The output ---> %d", outpt);
      
      #20
      
      rd= 12345;
      address = 6;
      writeEnblr = 1;
      #20
        $display ("The input ---> %d,%d,%d,%d ", clk,rd,address,writeEnblr);
        $display("The output ---> %d", outpt);
      
      #20
      rd= 51234;
      address = 7;
      #20
       $display ("The onput ---> %d,%d,%d,%d ", clk,rd,address,writeEnblr);
       $display("The output ---> %d", outpt);
      
      #20
      address =6;
      writeEnblr = 0;
      #20
      address =6;
      writeEnblr = 0;
        $display ("The input ---> %d,%d,%d,%d ", clk,rd,address,writeEnblr);
        $display("The output ---> %d", outpt);
      
    end
endmodule
