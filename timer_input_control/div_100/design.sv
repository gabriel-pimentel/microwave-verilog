`timescale 1ms/1ms

//Para dividir a frequencia por 100, usaremos, duas vezes cada, um divisor de frequencia por 5 e outro por 2


module div_5(input clock, output reg clock_div);
  reg [2:0] count = 3'b000; //contandor mod 5
  reg ff_out = 0;
  
  always @(posedge clock)
    begin
      if(count < 4)
        count <= count+1;
      else
        count <= 0;
      clock_div <= ff_out | count[1];
    end
  always @(negedge clock)
    begin
      ff_out <= count[1];
      clock_div <= ff_out | count[1];
    end
  
  
endmodule

module div_2(input clock, output reg clock_div); //divide seguindo a logica de um flip-flop D

  reg Q = 0;
  
  always @(posedge clock)
    begin
      Q <= ~Q;
      clock_div = Q;
    end
  always @(negedge clock)
    begin
      clock_div = Q;
    end
             
endmodule

module div_100(input clock, output wire clock_div);
  
  wire clock_2, clock_4, clock_20;
  
  div_2 D2_1(clock, clock_2);
  div_2 D2_2(clock_2, clock_4);
  div_5 D5_1(clock_4, clock_20);
  div_5 D5_2(clock_20, clock_div);
  
endmodule
  