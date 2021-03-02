`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2021 11:26:14 PM
// Design Name: 
// Module Name: scale
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


module scale(
  input   wire   [11:0]  pixel_row, 
  input   wire   [11:0]  pixel_column,    // input pixel coordinates
  output  wire   [13:0]  vid_addr         // concatenation of {world row, world column}
  // output wire           out_of_map     // indicate if the given pixel coordinates out-of-map (1) or not (0)
);

reg [6:0] pix_column_scaled;
reg [6:0] pix_row_scaled;

assign pix_column_scaled = pixel_column/8;
 //assign pix_row_scaled = ((pixel_row/8) + 32);
assign pix_row_scaled = pixel_row/6;
assign vid_addr = {pix_row_scaled [6:0], pix_column_scaled [6:0]};

endmodule