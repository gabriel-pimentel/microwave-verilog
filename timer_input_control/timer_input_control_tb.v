`timescale 1ps/1ps

module timer_input_ctrl_tb; 

    reg  [9:0] teclado;
    reg enablen, clock; 
    wire [3:0] D;
    wire loadn, pgt_1Hz;

    
    always #50 clock <= !clock;
    

    timer_input_ctrl dut(.D(D), .loadn(loadn), .pgt_1Hz(pgt_1Hz), .teclado(teclado), .enablen(enablen), .clock(clock));

    initial begin
        $dumpfile("timer_input_ctrl.vcd");
	    $dumpvars(0,timer_input_ctrl_tb);

        
    end

    initial begin

        enablen = 0;
        clock = 0;
        teclado = 10'b0000000000; 
        #5000 teclado = 10'b0000000000; 
        #5000 teclado = 10'b0000000001;
        #5000 teclado = 10'b0000000010;
        #5000 teclado = 10'b0000000100;
        #5000 teclado = 10'b0000001000;
        #5000 teclado = 10'b0000010000;
        #5000 teclado = 10'b0000100000;
        #5000 teclado = 10'b0000001000;
        #5000 teclado = 10'b0001000000;
        #5000 teclado = 10'b0010000000;
        #5000 teclado = 10'b0100000000;
        #5000 teclado = 10'b1000000000; 
        enablen = 1;
        #20000; $finish;
    end

endmodule