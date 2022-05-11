`include "../magnetron_control/magnetron_controller/verilog/latch_sr.v"
`include "../magnetron_control/magnetron_controller/verilog/logic_mag.v"
module magnetron_controller(
    input wire startn , stopn , clearn, door_closed, timer_done, 
    output wire mag_on
); 
    wire r, s; // Fios internos que representam as entradas R e S do latch
    // Passando os inputs e outputs para o bloco lógico do magnetron
    mag_logic logic(startn, stopn, clearn, door_closed, timer_done, s, r);
    // Passando os inputs e outputs para o latch_SR
    latch_sr latch(s, r, mag_on);  
    
endmodule