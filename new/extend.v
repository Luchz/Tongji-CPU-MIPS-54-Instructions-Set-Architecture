`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/06 16:54:40
// Design Name: 
// Module Name: extend
// Project Name: 
// Taregt Devices: 
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

module Ext5 # (parameter WIDTH = 5)(
    input [WIDTH - 1:0] a,
    input sext,
    output [31:0] b
   );
   assign b = sext?{{(32 - WIDTH){a[WIDTH - 1]}},a}:{27'b0,a};
endmodule

module Ext8 # (parameter WIDTH = 8)(
    input [WIDTH - 1:0] a,
    input sext,
    output [31:0] b
   );
   assign b = sext?{{(32 - WIDTH){a[WIDTH - 1]}},a}:{24'b0,a};
endmodule

module Ext16 # (parameter WIDTH = 16)(
    input [WIDTH - 1:0] a,
    input sext,
    output [31:0] b
   );
   assign b = sext?{{(32 - WIDTH){a[WIDTH - 1]}},a}:{16'b0,a};
endmodule

module Ext18 # (parameter WIDTH = 18)(
    input [WIDTH - 1:0] a,
    input sext,
    output [31:0] b
   );
   assign b = sext?{{(32 - WIDTH){a[WIDTH - 1]}},a}:{14'b0,a};
endmodule

module Catenate(
    input [3:0] data_4b_h,
    input [27:0] data_28b_l,
    output [31:0] data_32b
    );
    assign data_32b = {data_4b_h,data_28b_l};
endmodule