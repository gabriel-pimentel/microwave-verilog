`timescale 1us/1ps

module counter_mod10_TB ();

    reg [3:0] data;
    reg loadn, clearn, clock, en;

    wire [3:0] digit;
    wire zero, tc;

    counter_mod10 dut(.loadn(loadn), .clearn(clearn), .clock(clock), .en(en), .data(data), .tc(tc),.zero(zero),.digit(digit));

    always #5000 clock <= !clock;

    initial begin
        $dumpfile("counter_mod10_TB.vcd");
        $dumpvars(0,counter_mod10_TB);
        
    end

    initial begin
        clock = 1'b0; data = 4'b1001; 
        loadn = 1'b1; 
        clearn = 1'b1; 
        en = 1'b0;
        #50000 loadn = 1'b0;
        #50000 loadn = 1'b1;
        #50000 en = 1'b1;
        #150000;
        en = 1'b0;
        #50000; 
        clearn = 1'b0;
        #50000; 
        clearn = 1'b1;
        #50000; 
        en = 1'b1;
        #150000;
        clearn = 1'b0;
        #50000; 
        clearn = 1'b1;
        #50000; $finish;
    end    
endmodule