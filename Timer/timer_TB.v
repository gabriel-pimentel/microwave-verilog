`timescale 1us/1ps

module timer_tb ();

    reg [3:0] data;
    reg loadn, clearn, clock, en;

    wire [3:0] sec_ones, sec_tens, mins;
    wire zero;

    always #5000 clock <= !clock;

    timer DUT(.data(data), .loadn(loadn), .clock(clock), .clearn(clearn), .en(en), .sec_ones(sec_ones), .sec_tens(sec_tens), .mins(mins), .zero(zero));


    initial begin
        $dumpfile("timer_tb.vcd");
        $dumpvars(0,timer_tb);
        
    end


    initial begin
        loadn = 0;
        clearn = 0;
        clock = 1;
        en = 0;

        data = 4'd8;
        #7500;

        data = 4'd5;
        #10000;

        data = 4'd7;
        #10000;

        loadn = 1;
        en = 1;

        #5700000;
        clearn = 1;
        #8000;
        clearn = 0;
        #6764500; $finish;
    end
endmodule