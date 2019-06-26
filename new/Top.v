`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/07 20:52:44
// Design Name: 
// Module Name: Top
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


module sccomp_dataflow(
    input clk_in,
    input reset,
    output [31:0] inst,
    output [31:0] pc
    );
    wire [31:0] alu;
    wire [54:0] op;
    cpu sccpu(clk_in, reset, alu, pc, op, inst);
endmodule

module cpu(
    input clk,
    input rst,
    output [31:0] alu_output,
    output [31:0] pc_out,
    output [54:0] op,
    output [31:0] imem_out
    );
    wire RF_CLK, RF_W, negative, zero, SIGN, exce, intr, timer_int, HI_W, LO_W;
    wire [31:0] addr, pc_in, cataddr, m3_out, m2_out, npc_out, branch, ext18_out, dout, reg_lout;
    wire [31:0] rdata1, rdata2, wdata, data, a, b, m6_out, m7_out, ext16_out, ext5_out, reg_hout;
    wire [31:0] word_16_out, word_8_out, word_ext_out, dout_word, m16_out, m17_out, hilo_out;
    wire [31:0] hi_out, lo_out, cp0_rdata, epc_out, epc_ret, epc_exe, mdhi_out, mulh_out, divh_out;
    wire [31:0] mdlo_out, mull_out, divl_out, nepc_out, status, lzc, m21_out, m22_out;
    wire [15:0] imm16;
    wire [25:0] imm26;
    wire [3:0] aluc;
    wire [4:0] waddr, im_addr, sele_addr, rs, rt, rd, shamt, cause;
    wire [19:0] m;
    //Regfiles cpu_ref(~RF_CLK, ~rst, RF_W, rs, rt, waddr, wdata, rdata1, rdata2, r1, r2);
    RegFiles    cpu_ref(RF_CLK, rst, RF_W, rs, sele_addr, waddr, wdata, rdata1, rdata2);
    //Regfiles    cpu_ref(RF_CLK, rst, RF_W, rs, sele_addr, waddr, wdata, rdata1, rdata2);
    iram        inst_mem(im_r, pc_out, rs, rt, rd, shamt, imm16, imm26, imem_out);
    alu         ALU(a, b, aluc, alu_output, zero, carry, negative, overflow);
    dram        dmem(DM_CS, DM_R, DM_W, alu_output, rdata2, m[10:9], dout);
    behav_reg   PC(pc_clk,rst,~rst,pc_in,pc_out);
    behav_reg   lo_reg(pc_clk, rst, LO_W, lo_out, reg_lout);
    behav_reg   hi_reg(pc_clk, rst, HI_W, hi_out, reg_hout); 
    CP0         cp0_inst(pc_clk, rst, op[48], op[49], pc_out, rd, rdata2, exce, op[51], cause, 
                intr, cp0_rdata, status, timer_int, epc_exe, epc_ret);
    Adder       add(ext18_out, npc_out, branch, );
    Adder       NPC(pc_out, 32'h00000004, npc_out, );
    GDIV_behav  Gen_div(rdata1, rdata2, SIGN, divl_out, divh_out);
    GMUL_behav  Gen_mul(rdata1, rdata2, SIGN, {mulh_out[31:0], mull_out[31:0]});
    CntLZ       ZeroCnt(rdata1, lzc);
    Catenate    Addrcat(pc_out[31:28],{imm26, 2'b00},cataddr);
    Ext18       Addrext({imm16, 2'b00}, m[6], ext18_out);
    Ext16       Immext(imm16, m[6], ext16_out);
    Ext16       Half2Word(dout[15:0], SIGN, word_16_out);
    Ext8        Byte2Word(dout[7:0], SIGN, word_8_out);
    Ext5        Shamtext(shamt, m[6], ext5_out);
    selector2       PcSelect(cataddr, m3_out, m[0], pc_in);
    selector2       M3_select(rdata1, nepc_out, m[2], m3_out);
    selector2       M2_select(branch, npc_out, m[1], m2_out);
    selector2       ALU_A(ext5_out, rdata1, m[3], a);
    selector2       ALU_B(rdata2, ext16_out, m[4], b);
    selector2       RF_wd(npc_out, m6_out, m[7] & m[18], wdata);
    selector2       M6_select(m16_out, alu_output, m[5], m6_out);
    selector2       Ext_sel(word_16_out, word_8_out, m[9], word_ext_out);
    selector2       dout_sel(dout, word_ext_out, m[10], dout_word);
    selector2       M16_select(dout_word, m21_out, m[13], m16_out);
    selector2       M17_select(hilo_out, cp0_rdata, m[14], m17_out);
    selector2       hilo_sel(reg_hout, reg_lout, m[15], hilo_out);
    selector2       epc_sel(epc_exe, epc_ret, m[16], epc_out);
    selector2       hi_sel(rdata1, mdhi_out, m[12], hi_out);
    selector2       lo_sel(rdata1, mdlo_out, m[12], lo_out);
    selector2       mdhi_sel(mulh_out, divh_out, m[11], mdhi_out);
    selector2       mdlo_sel(mull_out, divl_out, m[11], mdlo_out);
    selector2       nepc_sel(m2_out, epc_out, m[17], nepc_out);
    selector2       M21_select(m17_out, m22_out, m[19] | m[11], m21_out);
    selector2       MUL_sel(lzc, mull_out, m[11], m22_out);
    selector2_5b    RF_rd(rd, rt, m[8], im_addr);
    selector2_5b    RF_addr(5'd31, im_addr, m[7], waddr);
    selector2_5b    zero_addr(5'b00000, rt, m[18], sele_addr);
    Control         ConUnit(op, zero, negative, clk, pc_clk, im_r, RF_W, RF_CLK, DM_CS, DM_W, 
                    DM_R, HI_W, LO_W, SIGN, exce, intr, m, aluc, cause);
    mem_decoder     imemdecoder(imem_out, 1'b1,op);
endmodule
