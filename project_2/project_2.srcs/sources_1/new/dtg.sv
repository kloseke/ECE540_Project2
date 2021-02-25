`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2021 11:11:48 AM
// Design Name: 
// Module Name: dtg
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

// 1024x768
module dtg(
	input      wire        clock,
	input      wire        rstn,
	output     reg	       horiz_sync, 
	output     reg         vert_sync, 
	output     reg         video_on,		
	output     reg [11:0]  pixel_row,
	output     reg [11:0]  pixel_column
);
// horizontal timings
parameter h_Act_end = 767;      // end of active horizontal pixels
parameter h_sync_start = h_Act_end + 16;
parameter h_sync_end = h_sync_start + 96;
parameter line = 1055;           // last pixel online after back porch = h_act_end + H_Front porch + H_sync pulse + H_back porch = 767 + 16 + 96 + 176

parameter v_Act_end     = 1023;      // end of active horizontal pixels
parameter v_sync_start  = v_Act_end + 1;
parameter v_sync_end    = v_sync_start + 3;
parameter screen          = 1055;           // last pixel online after back porch = v_act_end + V_Front porch + V_sync pulse + V_back porch = 1023 + 1 + 3 + 28

// vertical timings

reg [7:0]   v_count;

 always_comb begin
        horiz_sync = ~(pixel_row>= h_sync_start && pixel_row < h_sync_end);  // invert: negative polarity
        vert_sync = ~(pixel_column>= v_sync_start && pixel_column < v_sync_end);  // invert: negative polarity
        video_on = (pixel_row <= h_Act_end && pixel_column <= v_Act_end);
    end

    // calculate horizontal and vertical screen position
    always_ff @ (posedge clock) begin
        if (pixel_row == line) begin  // last pixel on line?
            pixel_row <= 0;
            pixel_column <= (pixel_column == screen) ? 0 : pixel_column + 1;  // last line on screen?
        end else begin
            pixel_row <= pixel_row + 1;
        end
        if (rstn) begin
            pixel_row <= 0;
            pixel_column <= 0;
        end
    end
endmodule    