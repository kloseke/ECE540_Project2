`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2021 11:23:03 PM
// Design Name: 
// Module Name: icon
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


module icon (
    input wire signed [31:0] pixel_row,
    input wire signed [31:0] pixel_column,
    input wire signed [31:0] LocX_reg,
    input wire signed [31:0] LocY_reg,
    input wire [7:0]         BotInfo_reg,
    input wire               clk,
    input wire               reset,
    output reg [11:0]   icon
);
