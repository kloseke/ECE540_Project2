module colorizer 
(
	input  wire [1:0] icon_out,
	input  wire [1:0] world_pixel_out,
	input  wire video_on,
	output reg [3:0] red,
	output reg [3:0] green,
	output reg [3:0] blue
);

// decide which coulour to output per pixel
  always @(*) begin
  case(video_on)	//Appologies in advance for the three nested case statements
	1'b1: begin
		case(icon_out)
					// abc_defg
			2'b00: 	begin
						case (world_pixel_out)
							2'b00: 	begin    //background (mid green)
										red = 4'b0000;
										green = 4'b0110;
										blue = 4'b0000;
									end
							2'b01: 	begin    //black line (black)
										red = 4'b0000;
										green = 4'b0000;
										blue = 4'b0000;
									end
							2'b10: 	begin    //obstruction (darker red)
										red = 4'b1100;
										green = 4'b0000;
										blue = 4'b0000;
									end
							default: begin   //defaults to black
										red = 4'b0000;
										green = 4'b0000;
										blue = 4'b0000;
									end
						endcase
					end
			2'b01:	begin //base icon colour (teal)
						red = 4'b0000;
						green = 4'b1111;
						blue = 4'b1111;
					end
			2'b10:	begin //icon colour 1 (Blue)
						red = 4'b0000;
						green = 4'b0000;
						blue = 4'b1111;
					end
			2'b11:	begin //icon colour 2 (white)
						red = 4'b0000;
						green = 4'b0000;
						blue = 4'b0000;
					end
			default:	begin //make yellow to mark any weird errors hitting default (yellow isn't used any where else)
						red = 4'b1111;
						green = 4'b1111;
						blue = 4'b0000;
					end
		endcase
	end
	1'b0:	begin //video off, blanking space
				red = 4'b0000;
				green = 4'b0000;
				blue = 4'b0000;
			end
	default:	begin //video off, blanking space (if we hit errors here, then we'll make this yellow)
				red = 4'b0000;
				green = 4'b0000;
				blue = 4'b0000;
			end
 endcase
 end
endmodule
