`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2026 13:26:44
// Design Name: 
// Module Name: xcompactor16x10
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


module xcompactor16x10(
    input  [15:0] scan_i,  
    output [9:0]  scan_o   
    );

assign scan_o[0] = scan_i[0]  ^ scan_i[1]  ^ scan_i[2]  ^ scan_i[3];
assign scan_o[1] = scan_i[4]  ^ scan_i[5]  ^ scan_i[6]  ^ scan_i[7];
assign scan_o[2] = scan_i[8]  ^ scan_i[9]  ^ scan_i[10] ^ scan_i[11];
assign scan_o[3] = scan_i[12] ^ scan_i[13] ^ scan_i[14] ^ scan_i[15];


assign scan_o[4] = scan_i[0] ^ scan_i[4] ^ scan_i[8]  ^ scan_i[12];
assign scan_o[5] = scan_i[1] ^ scan_i[5] ^ scan_i[9]  ^ scan_i[13];
assign scan_o[6] = scan_i[2] ^ scan_i[6] ^ scan_i[10] ^ scan_i[14];
assign scan_o[7] = scan_i[3] ^ scan_i[7] ^ scan_i[11] ^ scan_i[15];

assign scan_o[8] = scan_i[0] ^ scan_i[5] ^ scan_i[10] ^ scan_i[15];
assign scan_o[9] = scan_i[3] ^ scan_i[6] ^ scan_i[9]  ^ scan_i[12];

endmodule
