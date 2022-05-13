module timer_input_ctrl (output wire [3:0] D,
                output wire loadn, pgt_1Hz,
                input wire [9:0] teclado,
                input wire enablen, clock
                );

    wire borda_subida, clear, clock_div; 

  
    codificador_prioridade encoder(D, loadn, teclado, enablen);
 
    div_100 dividir(clock, clock_div);

    contadorNaoReciclavel_0_7 delay(clock, loadn, borda_subida);

    MUX_2to1 MUX(pgt_1Hz, borda_subida, clock_div, enablen);

endmodule