
//////////////////////////////////////////////////////////////////////////////////

module north
(
	input wire [11:0] pixel_column,
	input wire [11:0] pixel_row,
	input wire [11:0] LocY_reg_base,
	input wire [11:0] LocX_reg_base,
	output wire [1:0] icon_out_n
);
 wire [23:0] pixel_cat;
 
 assign pixel_cat = {pixel_row, pixel_column};
 
 always @(*)
	if (pixel_cat == {LocY_reg_base, (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {LocY_reg_base, (LocX_reg_base+6)}) icon_out = 2;
	else if  (pixel_cat == {LocY_reg_base, (LocX_reg_base+9)}) icon_out = 2;
	else if  (pixel_cat == {LocY_reg_base, (LocX_reg_base+10)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+5)}) icon_out = 2;
	else if  (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+10)}) icon_out = 2;
	
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+5)}) icon_out = 2;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+6)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+9)}) icon_out = 2;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+10)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+5)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+6)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+9)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+10)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+4)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+4)}) icon_out = 2;
	
	else icon_out = 0;
endmodule

/////////////////////////////////////////////////////////////////////////

module north_east
(
	input wire [11:0] pixel_column,
	input wire [11:0] pixel_row,
	input wire [11:0] LocY_reg_base,
	input wire [11:0] LocX_reg_base,
	output wire [1:0] icon_out_ne
);
 wire [23:0] pixel_cat;
 
 assign pixel_cat = {pixel_row, pixel_column};
 
 always @(*)
	if (pixel_cat == {LocY_reg_base, (LocX_reg_base+9)}) icon_out = 1;
	else if (pixel_cat == {LocY_reg_base, (LocX_reg_base+10)}) icon_out = 2;
	
	else if (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+9)}) icon_out = 2;
	else if (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+10)}) icon_out = 1;
	
	else if (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+9)}) icon_out = 1;
	
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+5)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+9)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+10)}) icon_out = 1;
	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+4)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+5)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+7)}) icon_out = 2;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+8)}) icon_out = 3;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+9)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+10)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+11)}) icon_out = 1;
	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+3)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+4)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+5)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+7)}) icon_out = 3;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+8)}) icon_out = 3;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+9)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+10)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+11)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+12)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+14)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+15)}) icon_out = 2;
	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+3)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+4)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+5)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+7)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+8)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+9)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+10)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+11)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+12)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+13)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+14)}) icon_out = 2;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+15)}) icon_out = 1;
	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+3)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+4)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+5)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+7)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+8)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+9)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+10)}) icon_out = 2;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+11)}) icon_out = 3;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+12)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+13)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+14)}) icon_out = 1;

	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+2)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+5)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+7)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+8)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+9)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+10)}) icon_out = 3;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+11)}) icon_out = 3;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+12)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+13)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+14)}) icon_out = 1;

	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+1)}) icon_out = 2;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+7)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+8)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+9)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+10)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+11)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+12)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+13)}) icon_out = 1;	

	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+7)}) icon_out = 1;		
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+8)}) icon_out = 1;		
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+9)}) icon_out = 1;		
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+10)}) icon_out = 1;		
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+11)}) icon_out = 1;		
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+12)}) icon_out = 1;

	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+9)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+10)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+11)}) icon_out = 1;

	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+9)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+10)}) icon_out = 1;
		
	else icon_out = 0;
endmodule

///////////////////////////////////////////////////////////////////////

module north_west
(
	input wire [11:0] pixel_column,
	input wire [11:0] pixel_row,
	input wire [11:0] LocY_reg_base,
	input wire [11:0] LocX_reg_base,
	output wire [1:0] icon_out_nw
);
 wire [23:0] pixel_cat;
 
 assign pixel_cat = {pixel_row, pixel_column};
 
 always @(*)
	if  (pixel_cat == {LocY_reg_base, (LocX_reg_base+5)}) icon_out = 2;
	else if  (pixel_cat == {LocY_reg_base, (LocX_reg_base+6)}) icon_out = 1;
		
	else if (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+5)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+6)}) icon_out = 2;	
	else if (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+7)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+8)}) icon_out = 1;
		
	else if (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+6)}) icon_out = 1;		
	else if (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+7)}) icon_out = 1;		
	else if (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+8)}) icon_out = 1;		
	else if (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+9)}) icon_out = 1;	
		
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+5)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+7)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+8)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+9)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+10)}) icon_out = 1;

	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+4)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+5)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+7)}) icon_out = 3;	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+8)}) icon_out = 3;	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+9)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+10)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+11)}) icon_out = 1;

	else if (pixel_cat == {(LocY_reg_base+5), LocX_reg_base}) icon_out = 2;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+1)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+3)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+4)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+5)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+7)}) icon_out = 2;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+8)}) icon_out = 3;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+9)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+10)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+11)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+12)}) icon_out = 1;

	else if (pixel_cat == {(LocY_reg_base+6), LocX_reg_base}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+1)}) icon_out = 2;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+2)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+3)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+4)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+5)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+7)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+8)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+9)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+10)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+11)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+12)}) icon_out = 1;	
	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+1)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+2)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+3)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+4)}) icon_out = 3;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+5)}) icon_out = 3;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+7)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+8)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+9)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+10)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+11)}) icon_out = 1;

	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+1)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+2)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+3)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+4)}) icon_out = 2;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+5)}) icon_out = 3;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+7)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+8)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+9)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+10)}) icon_out = 1;	
		
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+2)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+3)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+4)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+5)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+7)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+8)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+9)}) icon_out = 1;	

	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+3)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+4)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+5)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+7)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+8)}) icon_out = 1;		
		
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+4)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+5)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+7)}) icon_out = 1;		
	
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+5)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+6)}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+7)}) icon_out = 1;		
		
	else if (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+8)}) icon_out = 1;		
		
	else if (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+9)}) icon_out = 2;		
	
	else icon_out = 0;
endmodule

////////////////////////////////////////////////////////////////

module south
(
	input wire [11:0] pixel_column,
	input wire [11:0] pixel_row,
	input wire [11:0] LocY_reg_base,
	input wire [11:0] LocX_reg_base,
	output wire [1:0] icon_out_s
);
 wire [23:0] pixel_cat;
 
 assign pixel_cat = {pixel_row, pixel_column};
 
 always @(*)
	if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+11)}) icon_out = 2;
	
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+11)}) icon_out = 1;
 
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+5)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+6)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+9)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+10)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+5)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+6)}) icon_out = 2;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+9)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+10)}) icon_out = 2;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+5)}) icon_out = 2;
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+5)}) icon_out = 2;
	
	else if  (pixel_cat == {(LocY_reg_base+15), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+15), (LocX_reg_base+5)}) icon_out = 2;
	else if  (pixel_cat == {(LocY_reg_base+15), (LocX_reg_base+5)}) icon_out = 2;
	else if  (pixel_cat == {(LocY_reg_base+15), (LocX_reg_base+5)}) icon_out = 1;
	
	else icon_out = 0;
endmodule

/////////////////////////////////////////////////////////////////////////

module south_west
(
	input wire [11:0] pixel_column,
	input wire [11:0] pixel_row,
	input wire [11:0] LocY_reg_base,
	input wire [11:0] LocX_reg_base,
	output wire [1:0] icon_out_sw
);
 wire [23:0] pixel_cat;
 
 assign pixel_cat = {pixel_row, pixel_column};
 
 always @(*)
	if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+6)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+7)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+8)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+2)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+14)}) icon_out = 2;
	
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+1)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+2)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+4)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+5)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+13)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+1)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+2)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+4)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+5)}) icon_out = 2;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+9), LocX_reg_base}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+1)}) icon_out = 2;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+2)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+10), LocX_reg_base}) icon_out = 2;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+1)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+7)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+8)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+7)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+8)}) icon_out = 2;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+11)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+10)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+9)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+6)}) icon_out = 2;
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+8)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+15), (LocX_reg_base+5)}) icon_out = 2;
	else if  (pixel_cat == {(LocY_reg_base+15), (LocX_reg_base+6)}) icon_out = 1;
	
	else icon_out = 0;
endmodule

////////////////////////////////////////////////////////////////////

module south_east
(
	input wire [11:0] pixel_column,
	input wire [11:0] pixel_row,
	input wire [11:0] LocY_reg_base,
	input wire [11:0] LocX_reg_base,
	output wire [1:0] icon_out_se
);
 wire [23:0] pixel_cat;
 
 assign pixel_cat = {pixel_row, pixel_column};
 
 always @(*)
	if  (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+6)}) icon_out = 2;
	
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+7)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+10)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+11)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+12)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+12)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+13)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+10)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+11)}) icon_out = 2;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+12)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+13)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+14)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+10)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+11)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+12)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+13)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+14)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+12)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+13)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+14)}) icon_out = 2;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+15)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+3)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+7)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+8)}) icon_out = 2;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+11)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+12)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+14)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+15)}) icon_out = 2;
	
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+4)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+7)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+8)}) icon_out = 3;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+10)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+11)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+5)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+10)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+6)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+9)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+7)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+8)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+9)}) icon_out = 2;
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+10)}) icon_out = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+15), (LocX_reg_base+9)}) icon_out = 1;
	else if  (pixel_cat == {(LocY_reg_base+15), (LocX_reg_base+10)}) icon_out = 2;
	
	
	else icon_out = 0;
endmodule

////////////////////////////////////////////////////////////////

module west
(
	input wire [11:0] pixel_column,
	input wire [11:0] pixel_row,
	input wire [11:0] LocY_reg_base,
	input wire [11:0] LocX_reg_base,
	output wire [1:0] icon_out_w
);
 wire [23:0] pixel_cat;
 
 assign pixel_cat = {pixel_row, pixel_column};
 
 always @(*)
	if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+2)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+3)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+4)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+5)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+9)}) icon_out = 1;
	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+2)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+3)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+4)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+5)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+9)}) icon_out = 1;
			
	else if (pixel_cat == {(LocY_reg_base+5), LocX_reg_base}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+1)}) icon_out = 2;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+2)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+3)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+4)}) icon_out = 3;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+5)}) icon_out = 3;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+9)}) icon_out = 1;
	
	else if (pixel_cat == {(LocY_reg_base+6), LocX_reg_base}) icon_out = 2;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+1)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+2)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+3)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+4)}) icon_out = 2;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+5)}) icon_out = 3;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+9)}) icon_out = 1;
	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+2)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+3)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+4)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+5)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+9)}) icon_out = 1;
	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+2)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+3)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+4)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+5)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+9)}) icon_out = 1;
	
	else if (pixel_cat == {(LocY_reg_base+9), LocX_reg_base}) icon_out = 2;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+1)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+2)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+3)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+4)}) icon_out = 3;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+5)}) icon_out = 3;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+9)}) icon_out = 1;
	
	else if (pixel_cat == {(LocY_reg_base+10), LocX_reg_base}) icon_out = 1;	
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+1)}) icon_out = 2;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+2)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+3)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+4)}) icon_out = 2;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+5)}) icon_out = 3;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+9)}) icon_out = 1;
	
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+2)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+3)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+4)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+5)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+9)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+10)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+11)}) icon_out = 2;
	
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+2)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+3)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+4)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+5)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+6)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+7)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+8)}) icon_out = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+9)}) icon_out = 1;
	
	else icon_out = 0;
endmodule


