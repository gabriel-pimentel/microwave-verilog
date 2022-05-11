module latch_sr(
	input wire s, r,
	output reg q
);


	always @ (s, r) 
	begin
	
		if(s == 0 && r == 0)
			q <= q;
		
		else if(s == 0 && r == 1)
			q <= 0;
		
		else if(s == 1 && r == 0)
			q <= 1;
		
		else if(s == 1 && r == 1)
			q <= 1'bX;

	end

endmodule