`timescale 1us/1ps

module counter_mod6_TB ();

    reg [3:0] data;
    reg loadn, clearn, clock, en;

    wire [3:0] digit;
    wire zero_TB, tc;

    counter_mod6 dut(.loadn(loadn), .clearn(clearn), .clock(clock), .en(en), .data(data), .tc(tc), .zero(zero), .digit(digit));

     always #5000 clock <= !clock;

    initial begin
      $dumpfile("counter_mod6_TB.vcd");
      $dumpvars(0,counter_mod6_TB);
      
    end

    initial begin
        clock = 1'b0; //inicio do clock
        
        data = 4'b0000; 
        loadn = 1'b0;
        clearn = 1'b1;
        en = 1'b0;
        #100000; loadn = 1'b1;
        #50000; en = 1'b1;
        #150000; en = 1'b0;
        #50000; clearn = 1'b0;
        #50000; clearn = 1'b1;
        #50000; en = 1'b1;
        #150000; clearn = 1'b0;
        #50000; clearn = 1'b1;
        #50000; $finish;
    end    
endmodule