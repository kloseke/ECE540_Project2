
module icon
(
//	wrapper for loading in icons
	input wire [11:0] pixel_column,
	input wire [11:0] pixel_row,
	input wire [7:0] LocX_reg,
	input wire [7:0] LocY_reg,
	input reg [7:0] BotInfo_reg,
	output reg [1:0] icon_out
);
	//check actual location against bot location to see if we need to draw the bot
	//if we are, check orientation (case) to see which pixel to write
	wire [1:0] icon_out_n;
	wire [1:0] icon_out_ne;
	wire [1:0] icon_out_nw;
	wire [1:0] icon_out_s;
	wire [1:0] icon_out_se;
	wire [1:0] icon_out_sw;
	wire [1:0] icon_out_e;
	wire [1:0] icon_out_w;
	
	wire [11:0] LocY_reg_base;
	wire [11:0] LocX_reg_base;
	wire [11:0] row_fix;
	
	assign row_fix = (pixel_row*2);
	assign LocY_reg_base = ((LocY_reg * 6) - 5);
	assign LocX_reg_base = ((LocX_reg * 8) - 4);
	
	north north_0
	(
		.pixel_column (pixel_column),
		.pixel_row (row_fix),
		.LocY_reg_base (LocY_reg_base),
		.LocX_reg_base (LocX_reg_base),
		.icon_out_n (icon_out_n)
	);
	
	north_east north_east_0
	(
		.pixel_column (pixel_column),
		.pixel_row (row_fix),
		.LocY_reg_base (LocY_reg_base),
		.LocX_reg_base (LocX_reg_base),
		.icon_out_ne (icon_out_ne)
	);
	
	north_west north_west_0
	(
		.pixel_column (pixel_column),
		.pixel_row (row_fix),
		.LocY_reg_base (LocY_reg_base),
		.LocX_reg_base (LocX_reg_base),
		.icon_out_nw (icon_out_nw)
	);
	
	south south_0
	(
		.pixel_column (pixel_column),
		.pixel_row (row_fix),
		.LocY_reg_base (LocY_reg_base),
		.LocX_reg_base (LocX_reg_base),
		.icon_out_s (icon_out_s)
	);
	
	south_east south_east_0
	(
		.pixel_column (pixel_column),
		.pixel_row (row_fix),
		.LocY_reg_base (LocY_reg_base),
		.LocX_reg_base (LocX_reg_base),
		.icon_out_se (icon_out_se)
	);
	
	south_west south_west_0
	(
		.pixel_column (pixel_column),
		.pixel_row (row_fix),
		.LocY_reg_base (LocY_reg_base),
		.LocX_reg_base (LocX_reg_base),
		.icon_out_sw (icon_out_sw)
	);
	
	east east_0
	(
		.pixel_column (pixel_column),
		.pixel_row (row_fix),
		.LocY_reg_base (LocY_reg_base),
		.LocX_reg_base (LocX_reg_base),
		.icon_out_e (icon_out_e)
	);
	
	west west_0
	(
		.pixel_column (pixel_column),
		.pixel_row (row_fix),
		.LocY_reg_base (LocY_reg_base),
		.LocX_reg_base (LocX_reg_base),
		.icon_out_w (icon_out_w)
	);
	
  
  always @(*) begin
	// case([2:0] BotInfo_reg)	//Appologies in advance for the three nested case statements
	case (BotInfo_reg [2:0])
	//0 degree
		3'b000 : icon_out = icon_out_n;
	//45 degree
		3'b001 : icon_out = icon_out_ne;
	//90 degree
		3'b010 : icon_out = icon_out_e;
	//135 degree
		3'b011 : icon_out = icon_out_se;
	//180 degree
		3'b100 : icon_out = icon_out_s;
	//225 degree
		3'b101 : icon_out = icon_out_sw;
	//270 degree
		3'b110 : icon_out = icon_out_w;
	//315 degree
		3'b111 : icon_out = icon_out_nw;
	default :icon_out = 2'b00;
	endcase
   end
endmodule

//////////////////////////////////////////////////////////////////////////////////

module north
(
	input wire [11:0] pixel_column,
	input wire [11:0] pixel_row,
	input wire [11:0] LocY_reg_base,
	input wire [11:0] LocX_reg_base,
	output reg [1:0] icon_out_n
);
 wire [23:0] pixel_cat;
 
 assign pixel_cat = {pixel_row, pixel_column};
 
 always @(*)
	if (pixel_cat == {LocY_reg_base, (LocX_reg_base+5)}) icon_out_n = 1;
	else if  (pixel_cat == {LocY_reg_base, (LocX_reg_base+6)}) icon_out_n = 2;
	else if  (pixel_cat == {LocY_reg_base, (LocX_reg_base+9)}) icon_out_n = 2;
	else if  (pixel_cat == {LocY_reg_base, (LocX_reg_base+10)}) icon_out_n = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+5)}) icon_out_n = 2;
	else if  (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+6)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+9)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+10)}) icon_out_n = 2;
	
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+3)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+4)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+5)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+6)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+7)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+8)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+9)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+10)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+11)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+12)}) icon_out_n = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+3)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+4)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+5)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+6)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+7)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+8)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+9)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+10)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+11)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+12)}) icon_out_n = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+3)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+4)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+5)}) icon_out_n = 2;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+6)}) icon_out_n = 3;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+7)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+8)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+9)}) icon_out_n = 2;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+10)}) icon_out_n = 3;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+11)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+12)}) icon_out_n = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+3)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+4)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+5)}) icon_out_n = 3;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+6)}) icon_out_n = 3;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+7)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+8)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+9)}) icon_out_n = 3;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+10)}) icon_out_n = 3;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+11)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+12)}) icon_out_n = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+3)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+4)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+5)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+6)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+7)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+8)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+9)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+10)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+11)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+12)}) icon_out_n = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+3)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+4)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+5)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+6)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+7)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+8)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+9)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+10)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+11)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+12)}) icon_out_n = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+3)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+4)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+5)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+6)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+7)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+8)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+9)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+10)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+11)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+12)}) icon_out_n = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+3)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+4)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+5)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+6)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+7)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+8)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+9)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+10)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+11)}) icon_out_n = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+12)}) icon_out_n = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+4)}) icon_out_n = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+4)}) icon_out_n = 2;
	
	else icon_out_n = 0;
endmodule

/////////////////////////////////////////////////////////////////////////

module north_east
(
	input wire [11:0] pixel_column,
	input wire [11:0] pixel_row,
	input wire [11:0] LocY_reg_base,
	input wire [11:0] LocX_reg_base,
	output reg [1:0] icon_out_ne
);
 wire [23:0] pixel_cat;
 
 assign pixel_cat = {pixel_row, pixel_column};
 
 always @(*)
	if (pixel_cat == {LocY_reg_base, (LocX_reg_base+9)}) icon_out_ne = 1;
	else if (pixel_cat == {LocY_reg_base, (LocX_reg_base+10)}) icon_out_ne = 2;
	
	else if (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+7)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+8)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+9)}) icon_out_ne = 2;
	else if (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+10)}) icon_out_ne = 1;
	
	else if (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+6)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+7)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+8)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+9)}) icon_out_ne = 1;
	
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+5)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+6)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+7)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+8)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+9)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+10)}) icon_out_ne = 1;
	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+4)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+5)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+6)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+7)}) icon_out_ne = 2;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+8)}) icon_out_ne = 3;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+9)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+10)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+11)}) icon_out_ne = 1;
	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+3)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+4)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+5)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+6)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+7)}) icon_out_ne = 3;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+8)}) icon_out_ne = 3;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+9)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+10)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+11)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+12)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+14)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+15)}) icon_out_ne = 2;
	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+3)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+4)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+5)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+6)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+7)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+8)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+9)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+10)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+11)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+12)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+13)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+14)}) icon_out_ne = 2;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+15)}) icon_out_ne = 1;
	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+3)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+4)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+5)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+6)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+7)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+8)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+9)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+10)}) icon_out_ne = 2;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+11)}) icon_out_ne = 3;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+12)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+13)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+14)}) icon_out_ne = 1;

	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+2)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+5)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+6)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+7)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+8)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+9)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+10)}) icon_out_ne = 3;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+11)}) icon_out_ne = 3;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+12)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+13)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+14)}) icon_out_ne = 1;

	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+1)}) icon_out_ne = 2;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+6)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+7)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+8)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+9)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+10)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+11)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+12)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+13)}) icon_out_ne = 1;	

	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+7)}) icon_out_ne = 1;		
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+8)}) icon_out_ne = 1;		
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+9)}) icon_out_ne = 1;		
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+10)}) icon_out_ne = 1;		
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+11)}) icon_out_ne = 1;		
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+12)}) icon_out_ne = 1;

	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+8)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+9)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+10)}) icon_out_ne = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+11)}) icon_out_ne = 1;

	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+9)}) icon_out_ne = 1;	
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+10)}) icon_out_ne = 1;
		
	else icon_out_ne = 0;
endmodule

///////////////////////////////////////////////////////////////////////

module north_west
(
	input wire [11:0] pixel_column,
	input wire [11:0] pixel_row,
	input wire [11:0] LocY_reg_base,
	input wire [11:0] LocX_reg_base,
	output reg [1:0] icon_out_nw
);
 wire [23:0] pixel_cat;
 
 assign pixel_cat = {pixel_row, pixel_column};
 
 always @(*)
	if  (pixel_cat == {LocY_reg_base, (LocX_reg_base+5)}) icon_out_nw = 2;
	else if  (pixel_cat == {LocY_reg_base, (LocX_reg_base+6)}) icon_out_nw = 1;
		
	else if (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+5)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+6)}) icon_out_nw = 2;	
	else if (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+7)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+8)}) icon_out_nw = 1;
		
	else if (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+6)}) icon_out_nw = 1;		
	else if (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+7)}) icon_out_nw = 1;		
	else if (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+8)}) icon_out_nw = 1;		
	else if (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+9)}) icon_out_nw = 1;	
		
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+5)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+6)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+7)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+8)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+9)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+10)}) icon_out_nw = 1;

	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+4)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+5)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+6)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+7)}) icon_out_nw = 3;	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+8)}) icon_out_nw = 3;	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+9)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+10)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+11)}) icon_out_nw = 1;

	else if (pixel_cat == {(LocY_reg_base+5), LocX_reg_base}) icon_out_nw = 2;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+1)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+3)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+4)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+5)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+6)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+7)}) icon_out_nw = 2;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+8)}) icon_out_nw = 3;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+9)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+10)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+11)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+12)}) icon_out_nw = 1;

	else if (pixel_cat == {(LocY_reg_base+6), LocX_reg_base}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+1)}) icon_out_nw = 2;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+2)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+3)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+4)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+5)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+6)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+7)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+8)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+9)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+10)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+11)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+12)}) icon_out_nw = 1;	
	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+1)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+2)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+3)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+4)}) icon_out_nw = 3;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+5)}) icon_out_nw = 3;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+6)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+7)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+8)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+9)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+10)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+11)}) icon_out_nw = 1;

	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+1)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+2)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+3)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+4)}) icon_out_nw = 2;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+5)}) icon_out_nw = 3;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+6)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+7)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+8)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+9)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+10)}) icon_out_nw = 1;	
		
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+2)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+3)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+4)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+5)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+6)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+7)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+8)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+9)}) icon_out_nw = 1;	

	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+3)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+4)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+5)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+6)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+7)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+8)}) icon_out_nw = 1;		
		
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+4)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+5)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+6)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+7)}) icon_out_nw = 1;		
	
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+5)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+6)}) icon_out_nw = 1;	
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+7)}) icon_out_nw = 1;		
		
	else if (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+8)}) icon_out_nw = 1;		
		
	else if (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+9)}) icon_out_nw = 2;		
	
	else icon_out_nw = 0;
endmodule

////////////////////////////////////////////////////////////////

module south
(
	input wire [11:0] pixel_column,
	input wire [11:0] pixel_row,
	input wire [11:0] LocY_reg_base,
	input wire [11:0] LocX_reg_base,
	output reg [1:0] icon_out_s
);
 wire [23:0] pixel_cat;
 
 assign pixel_cat = {pixel_row, pixel_column};
 
 always @(*)
	if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+11)}) icon_out_s = 2;
	
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+11)}) icon_out_s = 1;
 
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+3)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+4)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+5)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+6)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+7)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+8)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+9)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+10)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+11)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+12)}) icon_out_s = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+3)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+4)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+5)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+6)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+7)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+8)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+9)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+10)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+11)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+12)}) icon_out_s = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+3)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+4)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+5)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+6)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+7)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+8)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+9)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+10)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+11)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+12)}) icon_out_s = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+3)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+4)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+5)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+6)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+7)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+8)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+9)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+10)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+11)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+12)}) icon_out_s = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+3)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+4)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+5)}) icon_out_s = 3;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+6)}) icon_out_s = 3;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+7)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+8)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+9)}) icon_out_s = 3;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+10)}) icon_out_s = 3;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+11)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+12)}) icon_out_s = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+3)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+4)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+5)}) icon_out_s = 3;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+6)}) icon_out_s = 2;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+7)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+8)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+9)}) icon_out_s = 3;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+10)}) icon_out_s = 2;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+11)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+12)}) icon_out_s = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+3)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+4)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+5)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+6)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+7)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+8)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+9)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+10)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+11)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+12)}) icon_out_s = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+3)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+4)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+5)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+6)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+7)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+8)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+9)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+10)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+11)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+12)}) icon_out_s = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+5)}) icon_out_s = 2;
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+5)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+5)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+5)}) icon_out_s = 2;
	
	else if  (pixel_cat == {(LocY_reg_base+15), (LocX_reg_base+5)}) icon_out_s = 1;
	else if  (pixel_cat == {(LocY_reg_base+15), (LocX_reg_base+5)}) icon_out_s = 2;
	else if  (pixel_cat == {(LocY_reg_base+15), (LocX_reg_base+5)}) icon_out_s = 2;
	else if  (pixel_cat == {(LocY_reg_base+15), (LocX_reg_base+5)}) icon_out_s = 1;
	
	else icon_out_s = 0;
endmodule

/////////////////////////////////////////////////////////////////////////

module south_west
(
	input wire [11:0] pixel_column,
	input wire [11:0] pixel_row,
	input wire [11:0] LocY_reg_base,
	input wire [11:0] LocX_reg_base,
	output reg [1:0] icon_out_sw
);
 wire [23:0] pixel_cat;
 
 assign pixel_cat = {pixel_row, pixel_column};
 
 always @(*)
	if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+5)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+6)}) icon_out_sw = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+4)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+5)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+6)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+7)}) icon_out_sw = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+3)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+4)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+5)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+6)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+7)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+8)}) icon_out_sw = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+2)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+3)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+4)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+5)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+6)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+7)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+8)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+9)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+14)}) icon_out_sw = 2;
	
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+1)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+2)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+3)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+4)}) icon_out_sw = 3;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+5)}) icon_out_sw = 3;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+6)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+7)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+8)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+9)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+10)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+13)}) icon_out_sw = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+1)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+2)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+3)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+4)}) icon_out_sw = 3;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+5)}) icon_out_sw = 2;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+6)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+7)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+8)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+9)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+10)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+11)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+12)}) icon_out_sw = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+9), LocX_reg_base}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+1)}) icon_out_sw = 2;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+2)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+3)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+4)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+5)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+6)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+7)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+8)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+9)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+10)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+11)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+12)}) icon_out_sw = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+10), LocX_reg_base}) icon_out_sw = 2;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+1)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+3)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+4)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+5)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+6)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+7)}) icon_out_sw = 3;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+8)}) icon_out_sw = 3;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+9)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+10)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+11)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+12)}) icon_out_sw = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+4)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+5)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+6)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+7)}) icon_out_sw = 3;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+8)}) icon_out_sw = 2;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+9)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+10)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+11)}) icon_out_sw = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+5)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+6)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+7)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+8)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+9)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+10)}) icon_out_sw = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+6)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+7)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+8)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+9)}) icon_out_sw = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+5)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+6)}) icon_out_sw = 2;
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+7)}) icon_out_sw = 1;
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+8)}) icon_out_sw = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+15), (LocX_reg_base+5)}) icon_out_sw = 2;
	else if  (pixel_cat == {(LocY_reg_base+15), (LocX_reg_base+6)}) icon_out_sw = 1;
	
	else icon_out_sw = 0;
endmodule

////////////////////////////////////////////////////////////////////

module south_east
(
	input wire [11:0] pixel_column,
	input wire [11:0] pixel_row,
	input wire [11:0] LocY_reg_base,
	input wire [11:0] LocX_reg_base,
	output reg [1:0] icon_out_se
);
 wire [23:0] pixel_cat;
 
 assign pixel_cat = {pixel_row, pixel_column};
 
 always @(*)
	if  (pixel_cat == {(LocY_reg_base+1), (LocX_reg_base+6)}) icon_out_se = 2;
	
	else if  (pixel_cat == {(LocY_reg_base+2), (LocX_reg_base+7)}) icon_out_se = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+8)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+9)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+10)}) icon_out_se = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+8)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+9)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+10)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+11)}) icon_out_se = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+7)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+8)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+9)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+10)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+11)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+12)}) icon_out_se = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+6)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+7)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+8)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+9)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+10)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+11)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+12)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+13)}) icon_out_se = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+5)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+6)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+7)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+8)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+9)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+10)}) icon_out_se = 3;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+11)}) icon_out_se = 2;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+12)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+13)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+14)}) icon_out_se = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+4)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+5)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+6)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+7)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+8)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+9)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+10)}) icon_out_se = 3;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+11)}) icon_out_se = 3;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+12)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+13)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+14)}) icon_out_se = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+3)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+4)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+5)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+6)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+7)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+8)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+9)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+10)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+11)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+12)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+13)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+14)}) icon_out_se = 2;
	else if  (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+15)}) icon_out_se = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+3)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+4)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+5)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+6)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+7)}) icon_out_se = 3;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+8)}) icon_out_se = 2;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+9)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+10)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+11)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+12)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+14)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+15)}) icon_out_se = 2;
	
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+4)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+5)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+6)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+7)}) icon_out_se = 3;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+8)}) icon_out_se = 3;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+9)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+10)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+11)}) icon_out_se = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+5)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+6)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+7)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+8)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+9)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+10)}) icon_out_se = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+6)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+7)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+8)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+13), (LocX_reg_base+9)}) icon_out_se = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+7)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+8)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+9)}) icon_out_se = 2;
	else if  (pixel_cat == {(LocY_reg_base+14), (LocX_reg_base+10)}) icon_out_se = 1;
	
	else if  (pixel_cat == {(LocY_reg_base+15), (LocX_reg_base+9)}) icon_out_se = 1;
	else if  (pixel_cat == {(LocY_reg_base+15), (LocX_reg_base+10)}) icon_out_se = 2;
	
	
	else icon_out_se = 0;
endmodule

////////////////////////////////////////////////////////////////

module west
(
	input wire [11:0] pixel_column,
	input wire [11:0] pixel_row,
	input wire [11:0] LocY_reg_base,
	input wire [11:0] LocX_reg_base,
	output reg [1:0] icon_out_w
);
 wire [23:0] pixel_cat;
 
 assign pixel_cat = {pixel_row, pixel_column};
 
 always @(*)
	if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+2)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+3)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+4)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+5)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+6)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+7)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+8)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+9)}) icon_out_w = 1;
	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+2)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+3)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+4)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+5)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+6)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+7)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+8)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+9)}) icon_out_w = 1;
			
	else if (pixel_cat == {(LocY_reg_base+5), LocX_reg_base}) icon_out_w = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+1)}) icon_out_w = 2;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+2)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+3)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+4)}) icon_out_w = 3;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+5)}) icon_out_w = 3;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+6)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+7)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+8)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+9)}) icon_out_w = 1;
	
	else if (pixel_cat == {(LocY_reg_base+6), LocX_reg_base}) icon_out_w = 2;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+1)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+2)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+3)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+4)}) icon_out_w = 2;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+5)}) icon_out_w = 3;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+6)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+7)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+8)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+9)}) icon_out_w = 1;
	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+2)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+3)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+4)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+5)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+6)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+7)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+8)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+9)}) icon_out_w = 1;
	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+2)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+3)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+4)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+5)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+6)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+7)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+8)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+9)}) icon_out_w = 1;
	
	else if (pixel_cat == {(LocY_reg_base+9), LocX_reg_base}) icon_out_w = 2;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+1)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+2)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+3)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+4)}) icon_out_w = 3;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+5)}) icon_out_w = 3;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+6)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+7)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+8)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+9)}) icon_out_w = 1;
	
	else if (pixel_cat == {(LocY_reg_base+10), LocX_reg_base}) icon_out_w = 1;	
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+1)}) icon_out_w = 2;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+2)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+3)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+4)}) icon_out_w = 2;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+5)}) icon_out_w = 3;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+6)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+7)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+8)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+9)}) icon_out_w = 1;
	
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+2)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+3)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+4)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+5)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+6)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+7)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+8)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+9)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+10)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+11)}) icon_out_w = 2;
	
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+2)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+3)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+4)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+5)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+6)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+7)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+8)}) icon_out_w = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+9)}) icon_out_w = 1;
	
	else icon_out_w = 0;
endmodule

////////////////////////////////////////////////////////////////

module east (
	input wire [11:0] pixel_column,
	input wire [11:0] pixel_row,
	input wire [11:0] LocY_reg_base,
	input wire [11:0] LocX_reg_base,
	output reg [1:0] icon_out_e
);
 wire [23:0] pixel_cat;
 
 assign pixel_cat = {pixel_row, pixel_column};
 
 always @(*)
	if  (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+6)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+7)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+8)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+9)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+10)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+11)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+12)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+3), (LocX_reg_base+13)}) icon_out_e = 1;
	
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+4)}) icon_out_e = 2;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+5)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+6)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+7)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+8)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+9)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+10)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+11)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+12)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+4), (LocX_reg_base+13)}) icon_out_e = 1;
			
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+6)}) icon_out_e = 1;	
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+7)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+8)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+9)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+10)}) icon_out_e = 3;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+11)}) icon_out_e = 2;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+12)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+13)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+14)}) icon_out_e = 2;
	else if (pixel_cat == {(LocY_reg_base+5), (LocX_reg_base+15)}) icon_out_e = 1;
	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+6)}) icon_out_e = 1;	
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+7)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+8)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+9)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+10)}) icon_out_e = 3;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+11)}) icon_out_e = 3;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+12)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+13)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+14)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+6), (LocX_reg_base+15)}) icon_out_e = 2;
	
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+6)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+7)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+8)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+9)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+10)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+11)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+12)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+7), (LocX_reg_base+13)}) icon_out_e = 1;
	
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+6)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+7)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+8)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+9)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+10)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+11)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+12)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+8), (LocX_reg_base+13)}) icon_out_e = 1;
	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+6)}) icon_out_e = 1;	
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+7)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+8)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+9)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+10)}) icon_out_e = 3;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+11)}) icon_out_e = 2;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+12)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+13)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+14)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+9), (LocX_reg_base+15)}) icon_out_e = 2;
	
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+6)}) icon_out_e = 1;	
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+7)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+8)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+9)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+10)}) icon_out_e = 3;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+11)}) icon_out_e = 3;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+12)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+13)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+14)}) icon_out_e = 2;
	else if (pixel_cat == {(LocY_reg_base+10), (LocX_reg_base+15)}) icon_out_e = 1;
	
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+6)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+7)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+8)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+9)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+10)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+11)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+12)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+11), (LocX_reg_base+13)}) icon_out_e = 1;
	
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+6)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+7)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+8)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+9)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+10)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+11)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+12)}) icon_out_e = 1;
	else if (pixel_cat == {(LocY_reg_base+12), (LocX_reg_base+13)}) icon_out_e = 1;
	
	else icon_out_e = 0;
endmodule

