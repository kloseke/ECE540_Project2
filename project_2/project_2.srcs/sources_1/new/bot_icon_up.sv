`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2021 03:05:29 AM
// Design Name: 
// Module Name: bot_icon_up
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


module bot_icon_up(
        input wire clk,
        input wiere [3:0]   row,
        input wiere [3:0]   col,
        output reg  [1:0]   color_data
    );
    (* rom_style = "block" *)

    // signal declarations
    reg [3:0]   row_reg;
    reg [3:0]   col_reg;
    
    always @(posedge clk)
        begin
            row_reg <= row;
            col_reg <= col;
            end
always @*
    case ({row_reg, col_reg})
    8'd00000000 // https://embeddedthoughts.com/2016/07/30/storing-image-data-in-block-ram-on-a-xilinx-fpga/
    8'd00000000
    8'd00000000
    8'd00000000
    8'd00000000
    8'd00000000
    8'd00000000
    8'd00000000
    8'd00000000
    8'd00000000
    
endmodule
