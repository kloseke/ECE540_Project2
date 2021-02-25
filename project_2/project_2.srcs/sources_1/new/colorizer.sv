`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2021 10:41:03 PM
// Design Name: 
// Module Name: Icon
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module colourizer 
(
	input [1:0] icon_out,
	input [1:0] world_pixel_out,
	input video_on,
	output [3:0] red,
	output [3:0] green,
	output [3:0] blue
);

// decide which coulour to output per pixel
  always @(*)
  case(video_on)	//Appologies in advance for the three nested case statements
	1'b1: begin
		case(icon_out)
					// abc_defg
			2'b00: 	begin
						case (world_pixel_out)
							2'b00: 	begin    //background (bright blue, might lighten a little)
										red = 4'b0000;
										green = 4'b0000;
										blue = 4'b1111;
									end
							2'b01: 	begin    //black line (black)
										red = 4'b0000;
										green = 4'b0000;
										blue = 4'b0000;
									end
							2'b10: 	begin    //obstruction (dark red)
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
			2'b01:	begin //base icon colour (light grey?)
						red = 4'b1100;
						green = 4'b1100;
						blue = 4'b1100;
					end
			2'b10:	begin //icon colour 1 (mid green)
						red = 4'b0000;
						green = 4'b1100;
						blue = 4'b0000;
					end
			2'b11:	begin //icon colour 2 (straight red)
						red = 4'b1111;
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
	endcase