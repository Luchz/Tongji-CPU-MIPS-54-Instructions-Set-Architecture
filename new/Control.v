`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/06 21:05:23
// Design Name: 
// Module Name: Control
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


module Control(
    input [54:0] op,
    input zero,
    input negative,
    input clk,
    output PC_CLK,
    output IM_R,
    output RF_W,
    output RF_CLK,
    output DM_CS,
    output DM_W,
    output DM_R,
    output HI_W,
    output LO_W,
    output SIGN,
    output EXCE,
    output INTR,
    output [19:0] m,
    output [3:0] ALUC,
    output [4:0] cause
    );
    
    assign m[0] = ~(op[28] | op[29]);
    assign m[1] = ~(op[26] | op[27] | op[28] | op[29] | op[30] | op[36] | op[37]) | (op[26] & ~zero) | (op[27] & zero) | (op[36] & negative);
    assign m[2] = ~(op[28] | op[29] | op[30] | op[37]);
    assign m[3] = ~(op[13] | op[14] | op[15] | op[28] | op[29] | op[30]);
    assign m[4] = op[16] | op[17] | op[18] | op[19] | op[20] | op[21] | op[22] | op[23] | op[24] | op[25] | op[38] | op[39] | op[40] | op[41] | op[42] | op[43];
    assign m[5] = ~(op[24] | op[25] | op[26] | op[27] | op[28] | op[29] | op[30] | op[35] | op[37] | op[38] | op[39] | op[40] | op[41] | op[44] | op[46] | op[48] | op[50]);
    assign m[6] = op[16] | op[17] | op[21] | op[24] | op[25] | op[26] | op[27] | op[36] | op[38] | op[39] | op[40] | op[41] | op[42] | op[43];
    assign m[7] = ~op[29];
    assign m[8] = op[16] | op[17] | op[18] | op[19] | op[20] | op[21] | op[22] | op[23] | op[24] | op[48] | op[38] | op[39] | op[40] | op[41];
    assign m[9] = op[38] | op[40] | op[42]; //1为读字节
    assign m[10] = op[38] | op[40] | op[39] | op[41] | op[42] | op[43]; //1为读半字/字节
    assign m[11] = op[31] | op[32] | op[35]; //1为除法
    assign m[12] = op[31] | op[32] | op[33] | op[34];//1为将乘除法结果载入HI/LO
    assign m[13] = op[35] | op[44] | op[46] | op[48] | op[50];    // 1为从cp0/HI/LO读
    assign m[14] = op[48];  //1从PC读，0从LO/Hi读
    assign m[15] = op[46];  //1载入低位，0载入高位
    assign m[16] = op[51];  //1为返回，0为异常处理
    assign m[17] = op[51] | op[52] | op[53] | op[54]; // 异常中断地址跳转
    assign m[18] = ~(op[36] | op[37]);
    assign m[19] = op[50];
    assign ALUC[0] = op[2] | op[3] | op[5] | op[7] | op[8] | op[9] | op[11] | op[13] | op[14] | op[19] | op[21] | op[26] | op[27] | op[54];
    assign ALUC[1] = op[1] | op[3] | op[6] | op[7] | op[8] | op[11] | op[12] | op[13] | op[16] | op[20] | op[22] | op[21];
    assign ALUC[2] = op[4] | op[5] | op[6] | op[7] | op[8] | op[9] | op[10] | op[13] | op[14] | op[15] | op[18] | op[19] | op[20];
    assign ALUC[3] = op[8] | op[9] | op[10] | op[11] | op[12] | op[13] | op[14] | op[15] | op[21] | op[22] | op[23];
    assign cause[4] = 1'b0;
    assign cause[3] = 1'b1;
    assign cause[2] = op[54];
    assign cause[1] = 1'b0;
    assign cause[0] = op[53] | op[54];
    assign DM_CS = (op[24] | op[25] | op[38] | op[39] | op[40] | op[41] | op[42] | op[43]) & clk;
    assign DM_W = op[25] | op[42] | op[43];
    assign DM_R = op[24] | op[38] | op[39] | op[40] | op[41];
    assign RF_CLK = clk;
    assign RF_W = ~(op[25] | op[26] | op[27] | op[28] | op[30] | op[31] | op[32] | op[33] | op[34] | op[36] | op[42] | op[43] | op[45] | op[47] | op[49] | op[51] | op[52] | op[53] | op[54]);
    assign EXCE = op[52] | op[53] | (op[54] & zero);
    assign PC_CLK = clk;
    assign IM_R = 1'b1;
    assign INTR = 1'b0;
    assign SIGN = op[31] | op[33] | op[40] | op[41];
    assign HI_W = op[31] | op[32] | op[33] | op[34] | op[45];
    assign LO_W = op[31] | op[32] | op[33] | op[34] | op[47];
endmodule
//m[0]: 为0时PC写入拼接的地址
//m[1]: 为1时PC写入NPC，0时写入ADD的结果
//m[2]：为0时写入RF的地址

//m[3]：为0时ALU_A写入移位偏移量，为1时写入RF_1
//m[4]：为0时ALU_B写入RF_2，为1时写入16位立即数

//m[5]：为0时RF写入DMEM，为1时写入ALU
//m[6]：为1时有符号扩展，为0时无符号扩展
//m[7]: 为0时操作RF的31号寄存器写入PC
//m[8]：为0时Waddr来自Rd，为1时来自Rt

//SIGN：为1时表示有符号运算，为0时表示无符号运算

module CP0_control(
    input clk,
    input mfc0,
    input mtc0,
    input eret,
    input exception,
    input intr,
    input [4:0] cause,
    input [31:0] status,
    output RF_W,
    output RF_R,
    output exc_w,
    output ret_w
    );
    wire sys, bp, trap, intv;
    assign sys = (~cause[0])&(~cause[2]) & (~status[8]);   //syscall中断
    assign bp = cause[0] & (~cause[2]) & (~status[9]);     //break中断
    assign trap = cause[0] & cause[2] & (~status[10]);     //陷阱中断
    assign intv = exception & status[0] & (sys | bp | trap);    //有效中断
    assign RF_W = exception ? 0 : mtc0;     //普通写指令
    assign RF_R = exception ? 0 : mfc0;     //普通读指令
    assign exc_w = intv;    //发生有效中断，cp0寄存器允许写入
    assign ret_w = eret & (~intv);
endmodule