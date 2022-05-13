module contadorNaoReciclavel_0_7(
  input wire clock, clear,
  output reg saida);
  
  reg[2:0] contador = 0;
  
  always @(posedge clock)
    begin
      
      if(clear == 1)
        begin
          contador <= 0; //contador so reseta quando clear e 1
          saida <= 0;
        end
      else
        begin
          if(contador < 7)
            begin
              contador = contador + 1; //contador so vai até 7
              if (contador == 4)
                saida <= 1;
              else
                saida <= 0;
            end
          
        end
    end
endmodule