`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2021 06:19:44 PM
// Design Name: 
// Module Name: icon_east
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
module icon_east(

	input wire [11:0] pixel_column,
	input wire [11:0] pixel_row,
	input wire [11:0] LocY_reg_base,
	input wire [11:0] LocX_reg_base,
	output wire [1:0] icon_out_e
);
 wire [23:0] pixel_cat;
 
 assign pixel_cat = {pixel_row, pixel_column};
 
 always @(*)
	if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+9)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+10)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+11)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+12)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+13)}) icon_out = 1;
	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+4)}) icon_out = 2;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+5)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+9)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+10)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+11)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+12)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+13)}) icon_out = 1;
			
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+9)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+10)}) icon_out = 3;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+11)}) icon_out = 2;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+12)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+13)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+14)}) icon_out = 2;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+15)}) icon_out = 1;
	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+9)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+10)}) icon_out = 3;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+11)}) icon_out = 3;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+12)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+13)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+14)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+15)}) icon_out = 2;
	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+9)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+10)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+11)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+12)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+13)}) icon_out = 1;
	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+9)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+10)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+11)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+12)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+13)}) icon_out = 1;
	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+9)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+10)}) icon_out = 3;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+11)}) icon_out = 2;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+12)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+13)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+14)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+15)}) icon_out = 2;
	
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+9)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+10)}) icon_out = 3;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+11)}) icon_out = 3;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+12)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+13)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+14)}) icon_out = 2;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+15)}) icon_out = 1;
	
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+9)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+10)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+11)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+12)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+13)}) icon_out = 1;
	
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+9)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+10)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+11)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+12)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+13)}) icon_out = 1;
	
	else icon_out = 0;
endmodule