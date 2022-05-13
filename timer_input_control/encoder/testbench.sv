`timescale 1ms/1ms

module encoder_tb;
  
  reg enablen;
  output loadn;
  output [3:0] saida_encoder;
  reg [9:0] numpad;
  
  codificador_prioridade dut(.saida_cod(saida_encoder), .loadn(loadn), .teclado_microondas(numpad), .enablen(enablen));
  
  initial begin
    
    $dumpfile("encoder.vcd");
    $dumpvars(0, encoder_tb);
    
    enablen = 1;  numpad = 10'b0000000010; #10; //enablen ALTO -> loadn ALTO
    numpad = 10'b0000000000; #10;
    enablen = 0;  numpad = 10'b0000000000; #10; //nenhuma tecla pressionada -> loadn ALTO
    
    //pressionando teclas -> loadn BAIXO
    numpad = 10'b0000000001; #10;
    numpad = 10'b0000000010; #10;
    numpad = 10'b0000000100; #10;
    numpad = 10'b0000001001; #10;
    numpad = 10'b0000001000; #10;
    numpad = 10'b0000010000; #10;
    numpad = 10'b0000100000; #10;
    numpad = 10'b0001000000; #10;
    numpad = 10'b0010000000; #10;
    
    

    
  end
  
endmodule
    
    