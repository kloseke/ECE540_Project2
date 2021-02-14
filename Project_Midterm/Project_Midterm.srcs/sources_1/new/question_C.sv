`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2021 04:21:15 PM
// Design Name: 
// Module Name: question_C
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


module question_C(
   	input	logic 	in1, in2, in3, in4, in5,
	input	logic	enableN,
	output	tri		tri_out
);

	always_comb begin
		tri_out = ~enableN ? 'z: ((in1 & in2) ^ (in3 & in4 & in5));
	end
endmodule
