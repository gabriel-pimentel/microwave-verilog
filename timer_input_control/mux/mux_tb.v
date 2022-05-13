`timescale 1ms/1ms

module mux_tb;
  
  reg sel, A, B;
  wire out;
  
  MUX_2to1 dut(.out(out), .sel(sel), .A(A), .B(B));
  
  initial begin
    
    $dumpfile("mux.vcd");
    $dumpvars(0, mux_tb);
    
    A = 0; B = 1;
    #10; sel = 1'b0;
    #10; sel = 1'b1; 
    #10;
    
    
  end
  
endmodule
    
    