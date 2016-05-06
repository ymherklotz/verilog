module pitch_volume_out(clock_in, blue_x, blue_y, tempo, volume);
   input [9:0] blue_x;
   input [9:0] blue_y;
   input 	   clock_in;
   

   output reg [2:0] tempo;
   output reg [2:0] volume;

   always @ (posedge clock_in)
	 begin
		if(blue_x < 10'd224) tempo = 3'd0;
		else if(blue_x < 10'd304) tempo = 3'd1;
		else if(blue_x < 10'd384) tempo = 3'd2;
		else if(blue_x < 10'd464) tempo = 3'd3;
		else if(blue_x < 10'd544) tempo = 3'd4;
		else if(blue_x < 10'd624) tempo = 3'd5;
		else if(blue_x < 10'd704) tempo = 3'd6;
		else if(blue_x < 10'd784) tempo = 3'd7;
		if(blue_y < 10'd94) volume = 3'd0;
		else if(blue_y < 10'd152) volume = 3'd1;
		else if(blue_y < 10'd210) volume = 3'd2;
		else if(blue_y < 10'd268) volume = 3'd3;
		else if(blue_y < 10'd326) volume = 3'd4;
		else if(blue_y < 10'd384) volume = 3'd5;
		else if(blue_y < 10'd442) volume = 3'd6;
		else if(blue_y < 10'd503) volume = 3'd7;
	 end
endmodule // pitch_volume_out
