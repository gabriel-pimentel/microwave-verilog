// Code your testbench here
// or browse Examples
`timescale 1ns/1ps
`include "../hdl/latch_sr.v"

module latch_sr_tb();

    reg s_tb,r_tb;
    wire q_tb;
    
    latch_sr UUT(.s(s_tb), .r(r_tb), .q(q_tb));
    
    initial 
        begin
            $dumpfile("latch_sr_tb.vcd");
            $dumpvars(0, latch_sr_tb);

                 r_tb=0; s_tb=0; 
            #10  r_tb=0; s_tb=1; 
            #10  r_tb=1; s_tb=0; 
            #10  r_tb=1; s_tb=1;
            #10  r_tb=0; s_tb=0;  
            #10  r_tb=0; s_tb=1; 
            #10  r_tb=1; s_tb=0;
            #10  r_tb=1; s_tb=1;
            #10  r_tb=0; s_tb=0;
            #10  r_tb=0; s_tb=1;
            #10  r_tb=1; s_tb=0;
            #10  r_tb=1; s_tb=1;
        
            #10;
        end
endmodule