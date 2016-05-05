
module syncroAdd(clock, intensity, stop, output);
	input clock;
	input reg intensity;
	input reg stop; 

	initial restart = 0;
	initial stop = 0;
	
	
	always @ (posedge clock)
		begin
			
		end
endmodule