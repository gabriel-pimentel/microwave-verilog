module MUX_2to1 (output wire out, input wire sel, A, B);
  
  assign out = (sel == 1'b0) ? A :
    (sel == 1'b1) ? B:
    1'bX;
    
  
endmodule