`timescale 1ns/1ps
`include "./hdl/decoder_7.v"

module decoder_7_tb();
 
    reg [3:0] sec_ones_tb,sec_tens_tb,min_tb;

    wire [6:0] sec_ones_segs_tb, sec_tens_segs_tb, mins_segs_tb;
    
    
    decoder_7 DUT(.sec_ones(sec_ones_tb), .sec_tens(sec_tens_tb), .min(min_tb));
    
/*
Fiz o teste com os minutos de 0 a 9 (0:00 a 9:00) e com as unidades e as dezenas de segundo indo pra 1 (0:01 e 0:10)
*/    
    initial
    begin
      $dumpfile("dump.vcd");
        $dumpvars;
            sec_ones_tb = 0; sec_tens_tb = 0; min_tb = 4'b0000; 
        #10 sec_ones_tb = 0; sec_tens_tb = 0; min_tb = 4'b0001; 
        #10 sec_ones_tb = 0; sec_tens_tb = 0; min_tb = 4'b0010; 
        #10 sec_ones_tb = 0; sec_tens_tb = 0; min_tb = 4'b0011; 
        #10 sec_ones_tb = 0; sec_tens_tb = 0; min_tb = 4'b0100; 
        #10 sec_ones_tb = 0; sec_tens_tb = 0; min_tb = 4'b0101; 
        #10 sec_ones_tb = 0; sec_tens_tb = 0; min_tb = 4'b0110; 
        #10 sec_ones_tb = 0; sec_tens_tb = 0; min_tb = 4'b0111; 
        #10 sec_ones_tb = 0; sec_tens_tb = 0; min_tb = 4'b1000; 
        #10 sec_ones_tb = 0; sec_tens_tb = 0; min_tb = 4'b1001;
        #10 sec_ones_tb = 0; sec_tens_tb = 4'b0001; min_tb = 0;
        #10 sec_ones_tb = 4'b0001; sec_tens_tb = 0; min_tb = 0;
        #10;
    end
endmodule