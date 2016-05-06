module ten_dff(is_blue, x_pos_in, x_pos_out);
   input is_blue;
   input [9:0] x_pos_in;

   output reg [9:0] x_pos_out;

   always @ (posedge is_blue)
	 begin
		x_pos_out = x_pos_in;
	 end
endmodule // ten_dff
