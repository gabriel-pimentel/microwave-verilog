module decoder_7(output wire [6:0] sec_ones_segs, sec_tens_segs, mins_segs,
                input wire  [3:0] sec_ones,sec_tens,min);

/*
O objetivo dessa parte é decodificar os números de relógio de BCD para um display de 7 segmentos.
Para tal, igualamos os valores de 0 a 9 das unidades de segundos, das dezenas de segundos e dos minutos aos seus correspondentes no formato de 7 segmentos (que necessita de 7 bits para ser representado).
As entradas em BCD são sec_ones (unidades de segundo), sec_tens (dezenas de segundos) e min (minutos).
As saídas em display de 7 segmentos são sec_ones_segs (unidades de segundo), sec_tens_segs (dezenas de segundos) e min_segs (minutos).
*/
assign mins_segs =   (min == 4'b0000)? 7'b111_1110:
                    (min == 4'b0001) ? 7'b011_0000:
                    (min == 4'b0010) ? 7'b110_1101:
                    (min == 4'b0011) ? 7'b111_1001:
                    (min == 4'b0100) ? 7'b011_0011:
                    (min == 4'b0101) ? 7'b101_1011:
                    (min == 4'b0110) ? 7'b101_1111:
                    (min == 4'b0111) ? 7'b111_0000:
                    (min == 4'b1000) ? 7'b111_1111:
                    (min == 4'b1001) ? 7'b111_0011:
                    8'bXXXX_XXXX;


assign sec_tens_segs =  (sec_tens == 4'b0000) ? 7'b111_1110:
                        (sec_tens == 4'b0001) ? 7'b011_0000:
                        (sec_tens == 4'b0010) ? 7'b110_1101:
                        (sec_tens == 4'b0011) ? 7'b111_1001:
                        (sec_tens == 4'b0100) ? 7'b011_0011:
                        (sec_tens == 4'b0101) ? 7'b101_1011:
                        (sec_tens == 4'b0110) ? 7'b101_1111:
                        (sec_tens == 4'b0111) ? 7'b111_0000:
                        (sec_tens == 4'b1000) ? 7'b111_1111:
                        (sec_tens == 4'b1001) ? 7'b111_0011:
                        8'bXXXX_XXXX;

assign sec_ones_segs =  (sec_ones == 4'b0000) ? 7'b111_1110:
                        (sec_ones == 4'b0001) ? 7'b011_0000:
                        (sec_ones == 4'b0010) ? 7'b110_1101:
                        (sec_ones == 4'b0011) ? 7'b111_1001:
                        (sec_ones == 4'b0100) ? 7'b011_0011:
                        (sec_ones == 4'b0101) ? 7'b101_1011:
                        (sec_ones == 4'b0110) ? 7'b101_1111:
                        (sec_ones == 4'b0111) ? 7'b111_0000:
                        (sec_ones == 4'b1000) ? 7'b111_1111:
                        (sec_ones == 4'b1001) ? 7'b111_0011:
                        8'bXXXX_XXXX;


endmodule