`timescale 1ms/1ms

module clock_tb;
  
  reg clock;
  wire clock_div;
  
  div_100 dut(.clock(clock), .clock_div(clock_div));

 	
  always #5 clock <= ~clock; // clock tera uma frequencia de 100hz nesse tb
  
  //o clock de saida devera ter 1hz
  
  initial begin
    
    $dumpfile("div_5.vcd");
    $dumpvars(0, clock_tb);
    
    clock = 0;
    #6000 $finish;
     
  end
  
endmodule