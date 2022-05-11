`timescale 1ps/1ps

module magnetron_controller_tb ();

    reg startn_tb, stopn_tb , clearn_tb, door_closed_tb, timer_done_tb;
    wire mag_on_tb;

    magnetron_controller DUT (.startn(startn_tb), .stopn(stopn_tb), .clearn(clearn_tb),
        .door_closed(door_closed_tb) , .timer_done(timer_done_tb), .mag_on(mag_on_tb));
    
    // Os casos de teste servem para verificar se o controle do magnetron está funcionando de forma
    // adequada, então vários testes foram feitos, com entradas diferentes, na tentativa de provocar
    // falhas, que não foram detectadas

    initial begin
        $dumpfile("magnetron_controller_tb.vcd");
		$dumpvars(0,magnetron_controller_tb);

        startn_tb=0; stopn_tb=0; clearn_tb=0; timer_done_tb=1'bx; door_closed_tb=0;   

        #10 startn_tb=1; stopn_tb=1; clearn_tb=0; timer_done_tb=1'bx; door_closed_tb=0;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=0; timer_done_tb=1'bx; door_closed_tb=1;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=0; timer_done_tb=1; door_closed_tb=0;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=0; timer_done_tb=1; door_closed_tb=1;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=1; timer_done_tb=0; door_closed_tb=0;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=1; timer_done_tb=0; door_closed_tb=1;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=1; timer_done_tb=1; door_closed_tb=0;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=1; timer_done_tb=1; door_closed_tb=1;   

        #10 startn_tb=1; stopn_tb=1; clearn_tb=0; timer_done_tb=0; door_closed_tb=0;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=0; timer_done_tb=0; door_closed_tb=1;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=0; timer_done_tb=1; door_closed_tb=0;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=0; timer_done_tb=1; door_closed_tb=1;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=1; timer_done_tb=0; door_closed_tb=0;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=1; timer_done_tb=0; door_closed_tb=1;   
        #10 startn_tb=1; stopn_tb=0; clearn_tb=1; timer_done_tb=0; door_closed_tb=1;   
        #10 startn_tb=1; stopn_tb=0; clearn_tb=1; timer_done_tb=0; door_closed_tb=1;   

        #10 startn_tb=1; stopn_tb=1; clearn_tb=1; timer_done_tb=1; door_closed_tb=0;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=1; timer_done_tb=1; door_closed_tb=0;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=1; timer_done_tb=1; door_closed_tb=0;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=1; timer_done_tb=0; door_closed_tb=0;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=1; timer_done_tb=0; door_closed_tb=0;   
        #10 startn_tb=1; stopn_tb=0; clearn_tb=1; timer_done_tb=0; door_closed_tb=0;   
        #10 startn_tb=1; stopn_tb=0; clearn_tb=1; timer_done_tb=0; door_closed_tb=0;   
        #10 startn_tb=1; stopn_tb=0; clearn_tb=1; timer_done_tb=0; door_closed_tb=0;   

        #10 startn_tb=0; stopn_tb=1; clearn_tb=1; timer_done_tb=0; door_closed_tb=0;   
        #10 startn_tb=0; stopn_tb=1; clearn_tb=1; timer_done_tb=0; door_closed_tb=1;   
        #10 startn_tb=0; stopn_tb=1; clearn_tb=1; timer_done_tb=1; door_closed_tb=0;   
        #10 startn_tb=0; stopn_tb=1; clearn_tb=1; timer_done_tb=1; door_closed_tb=1;   
        #10 startn_tb=0; stopn_tb=1; clearn_tb=1; timer_done_tb=0; door_closed_tb=0;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=1; timer_done_tb=0; door_closed_tb=1;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=1; timer_done_tb=1; door_closed_tb=0;   
        #10 startn_tb=1; stopn_tb=1; clearn_tb=1; timer_done_tb=1; door_closed_tb=1;   

        #10 startn_tb=1; stopn_tb=1; clearn_tb=1; timer_done_tb=0; door_closed_tb=1;   
        #50 startn_tb=0; stopn_tb=1; clearn_tb=1; timer_done_tb=0; door_closed_tb=1;   
        #5 startn_tb=1; stopn_tb=0; clearn_tb=1; timer_done_tb=0; door_closed_tb=1;   
        #50 startn_tb=1; stopn_tb=1; clearn_tb=1; timer_done_tb=1; door_closed_tb=1;   
        #50 startn_tb=1; stopn_tb=0; clearn_tb=1; timer_done_tb=1; door_closed_tb=1;

    end
endmodule