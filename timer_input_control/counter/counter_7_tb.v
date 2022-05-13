`timescale 1ms/1ms

module counter_7_tb;
  
  reg clock, clear;
  wire saida;
  
  
  counter_7 dut(.clock(clock), .clear(clear), .saida(saida));
  
  always #5 clock = ~clock; 
  always #80 clear = ~clear;
  
  initial begin
    
    $dumpfile("counter_7.vcd");
    $dumpvars(0, counter_7_tb);
    
    clock = 0; clear = 0;
    #300 $finish;
     
  end
  
endmodule
    