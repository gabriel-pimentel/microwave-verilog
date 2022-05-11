module mag_logic (
    input wire startn , stopn , clearn, door_closed, timer_done, 
    output reg  s, r
);

	 always @(negedge startn, stopn, clearn, door_closed, timer_done) 
	 begin

        if(!clearn || !stopn || timer_done || !door_closed) 
            begin
                s = 0;  
                r = 1; 
            end

        else if(!startn && door_closed) 
            begin                       
                s = 1;    
                r = 0;  
            end

        else 
            begin
                s = 0; 
                r = 1; 
            end
    end

endmodule