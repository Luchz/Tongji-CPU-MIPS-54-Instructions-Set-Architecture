`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/28 15:37:23
// Design Name: 
// Module Name: CP0
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


module CP0(
    input clk,
    input rst,
    input mfc0,
    input mtc0,
    input [31:0] pc,
    input [4:0] Rd,
    input [31:0] wdata,
    input exception,
    input eret,
    input [4:0] cause,
    input intr,
    output [31:0] rdata,
    output [31:0] status,
    output reg timer_int,
    output [31:0] exc_addr,
    output [31:0] ret_addr
    );
    wire we, re, exc_w, ret_w;
    wire [31:0] pc_out;
    cp0_reg cp0_register(clk, rst, we, re, exc_w, ret_w, Rd, Rd, cause, wdata, pc, rdata, pc_out, status);
    CP0_control cp0_ctl(clk, mfc0, mtc0, eret, exception, intr, cause, status, we, re, exc_w, ret_w);
    assign exc_addr = 32'h00400004;
    assign ret_addr = pc_out;
    always @ (posedge clk or posedge rst)
        begin
            if(rst == 1'b1)
                timer_int <= 1'b0;
            else timer_int <= 1'b0;
        end
endmodule
