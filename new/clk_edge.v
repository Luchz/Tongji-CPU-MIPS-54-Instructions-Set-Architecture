`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/25 12:38:41
// Design Name: 
// Module Name: clk_edge
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


module clk_edge(
    input clk,
    input rst,
    output [31:0] r
    );
    integer i;
    assign r = i;
    always @ (posedge clk or posedge rst)
        begin
            if(rst == 1'b1)
                i <= 0;
            else i <= i + 1; 
        end
endmodule
