`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/28 16:19:03
// Design Name: 
// Module Name: cp0_reg
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


module cp0_reg(
    input clk,
    input rst,
    input we,
    input re,
    input exc_w,
    input ret_w,
    input [4:0] Rd,
    input [4:0] Wd,
    input [4:0] cause,
    input [31:0] wdata,
    input [31:0] pc_in,
    output [31:0] rdata,
    output [31:0] pcreg,
    output [31:0] status
);
    reg [31:0] array_reg [31:0];
    reg [31:0] sta_right;
    wire [31:0] sta_left;
    assign pcreg = array_reg[14];
    assign sta_left = array_reg[12] << 5;
    assign status = array_reg[12];
    /******************************************************************/
    assign rdata = (re == 1'b1) ? array_reg[Rd] : 32'hzzzzzzzz;//warning
    /******************************************************************/
    always @ (posedge clk or posedge rst)
    begin
        if(rst == 1'b1)begin
            array_reg[0] <= 32'b0;
            array_reg[1] <= 32'b0;
            array_reg[2] <= 32'b0;
            array_reg[3] <= 32'b0;
            array_reg[4] <= 32'b0;
            array_reg[5] <= 32'b0;
            array_reg[6] <= 32'b0;
            array_reg[7] <= 32'b0;
            array_reg[8] <= 32'b0;
            array_reg[9] <= 32'b0;
            array_reg[10] <= 32'b0;
            array_reg[11] <= 32'b0;
            array_reg[12] <= 32'h0701;
            //array_reg[12] <= 32'h0;
            array_reg[13] <= 32'b0;
            array_reg[14] <= 32'b0;
            array_reg[15] <= 32'b0;
            array_reg[16] <= 32'b0;
            array_reg[17] <= 32'b0;
            array_reg[18] <= 32'b0;
            array_reg[19] <= 32'b0;
            array_reg[20] <= 32'b0;
            array_reg[21] <= 32'b0;
            array_reg[22] <= 32'b0;
            array_reg[23] <= 32'b0;
            array_reg[24] <= 32'b0;
            array_reg[25] <= 32'b0;
            array_reg[26] <= 32'b0;
            array_reg[27] <= 32'b0;
            array_reg[28] <= 32'b0;
            array_reg[29] <= 32'b0;
            array_reg[30] <= 32'b0;
            array_reg[31] <= 32'b0;
        end
        else begin
            if(exc_w == 1'b1)   //status保护，epc保护，cause载入
                begin
                    sta_right <= array_reg[12];
                    array_reg[12] <= sta_left;
                    array_reg[13] <= {25'b0, cause[4:0], 2'b0};
                    array_reg[14] <= pc_in;
                end
            else if(ret_w == 1'b1)  //撤销status保护，epc更新
                begin
                    array_reg[12] <= sta_right;
                    //array_reg[14] <= pc_in;
                end
            else if(we == 1'b1)      //普通写入
                array_reg[Wd] <= wdata;
        end
    end
endmodule
