`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2026 13:33:52
// Design Name: 
// Module Name: xcompactor16x10_tb
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


module xcompactor16x10_tb();

    reg [15:0] scan_i;
    wire [9:0] scan_o;

    xcompactor16x10 uut (
        .scan_i(scan_i),
        .scan_o(scan_o)
    );

    initial begin
    
        scan_i = 16'h0000; 
        #20;

        scan_i = 16'h0001; 
        #20;

        scan_i = 16'h0020; 
        #20;

        scan_i = 16'hFFFF; 
        #10;
        scan_i[15] = 1'bx; 
        #20;

        $display("Simulation finished. Check waveforms for transitions.");
        $finish;
    end

endmodule
