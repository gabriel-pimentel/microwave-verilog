module codificador_prioridade(
  output reg [3:0] saida_cod,
  output wire loadn,
  input wire [9:0] teclado_microondas,
  input wire enablen);
  
  assign loadn = (enablen | ~(teclado_microondas[0] | teclado_microondas[1] |teclado_microondas[2]| teclado_microondas[3] |teclado_microondas[4]| teclado_microondas[5] | teclado_microondas[6] | teclado_microondas[7] | teclado_microondas[8] | teclado_microondas[9]));
    
    always @(teclado_microondas)
      begin
        casez (teclado_microondas)
          10'b0000000001 : saida_cod = 4'b0000;
          10'b000000001? : saida_cod = 4'b0001;
          10'b00000001?? : saida_cod = 4'b0010;
          10'b0000001??? : saida_cod = 4'b0011;
          10'b000001???? : saida_cod = 4'b0100;
          10'b00001????? : saida_cod = 4'b0101;
          10'b0001?????? : saida_cod = 4'b0110;
          10'b001??????? : saida_cod = 4'b0111;
          10'b01???????? : saida_cod = 4'b1000;
          10'b1????????? : saida_cod = 4'b1001;
          default: saida_cod = 4'b0000;
        endcase
      end
endmodule