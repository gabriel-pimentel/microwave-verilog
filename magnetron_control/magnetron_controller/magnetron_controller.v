`include "../magnetron_control/magnetron_controller/verilog/latch_sr.v"
`include "../magnetron_control/magnetron_controller/verilog/mag_logic.v"

module magnetron_controller(
    input wire startn , stopn , clearn, door_closed, timer_done, 
    output wire mag_on
); 
    wire r, s;

    mag_logic maglogic (
    	.startn(startn), 
    	.stopn(stopn), 
    	.clearn(clearn), 
    	.door_closed(door_closed_tb),
    	.timer_done(timer_done), 
    	.s(s), .r(r));
    
    latch_sr latchsr (.s(s), .r(r), .q(mag_on));  
    
endmodule