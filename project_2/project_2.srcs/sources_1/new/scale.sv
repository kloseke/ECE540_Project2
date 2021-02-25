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
  input      [11:0] pixel_row, pixel_column,    // input pixel coordinates
  output     [13:0] vid_addr,                   // concatenation of {world row, world column}
  output            out_of_map                  // indicate if the given pixel coordinates out-of-map (1) or not (0)
);

