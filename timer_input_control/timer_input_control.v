`include "counter/counter_7.v"
`include "div_100/div_100.v"
`include "encoder/encoder.v"
`include "mux/mux.v"

module timer_input_control (output wire [3:0] D,
                output wire loadn, pgt_1Hz,
                input wire [9:0] teclado,
                input wire enablen, clock
                );

    wire borda_subida, clear, clock_div; 

  
    encoder encoder(D, loadn, teclado, enablen);
 
    div_100 dividir(clock, clock_div);

    counter_7 delay(clock, loadn, borda_subida);

    mux mux(pgt_1Hz, borda_subida, clock_div, enablen);

endmodule