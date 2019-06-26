`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/06 18:19:35
// Design Name: 
// Module Name: Plexers
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

//32位32选一选择器，结构级描述
module selector32(
    input [31:0] iC0,iC1,iC2,iC3,iC4,iC5,iC6,iC7,
    input [31:0] iC8,iC9,iC10,iC11,iC12,iC13,iC14,iC15,
    input [31:0] iC16,iC17,iC18,iC19,iC20,iC21,iC22,iC23,
    input [31:0] iC24,iC25,iC26,iC27,iC28,iC29,iC30,iC31,
    input [4:0] addr,
    output  [31:0] oZ
    );
    wire [31:0] sel_o00, sel_o01, sel_o02, sel_o03, sel_o04, sel_o05, sel_o06, sel_o07, 
    sel_o08, sel_o09, sel_o010, sel_o011, sel_o012, sel_o013, sel_o014, sel_o015;
    wire [31:0] sel_o10, sel_o11, sel_o12, sel_o13, sel_o14, sel_o15, sel_o16, sel_o17;
    wire [31:0] sel_o20, sel_o21, sel_o22, sel_o23, sel_o30, sel_o31, sel_o40;
    selector2 sel_00(iC0, iC1, addr[0], sel_o00);
    selector2 sel_01(iC2, iC3, addr[0], sel_o01);
    selector2 sel_02(iC4, iC5, addr[0], sel_o02);
    selector2 sel_03(iC6, iC7, addr[0], sel_o03);
    selector2 sel_04(iC8, iC9, addr[0], sel_o04);
    selector2 sel_05(iC10, iC11, addr[0], sel_o05);
    selector2 sel_06(iC12, iC13, addr[0], sel_o06);
    selector2 sel_07(iC14, iC15, addr[0], sel_o07);
    selector2 sel_08(iC16, iC17, addr[0], sel_o08);
    selector2 sel_09(iC18, iC19, addr[0], sel_o09);
    selector2 sel_010(iC20, iC21, addr[0], sel_o010);
    selector2 sel_011(iC22, iC23, addr[0], sel_o011);
    selector2 sel_012(iC24, iC25, addr[0], sel_o012);
    selector2 sel_013(iC26, iC27, addr[0], sel_o013);
    selector2 sel_014(iC28, iC29, addr[0], sel_o014);
    selector2 sel_015(iC30, iC31, addr[0], sel_o015);
    selector2 sel_10(sel_o00, sel_o01, addr[1], sel_o10);
    selector2 sel_11(sel_o02, sel_o03, addr[1], sel_o11);
    selector2 sel_12(sel_o04, sel_o05, addr[1], sel_o12);
    selector2 sel_13(sel_o06, sel_o07, addr[1], sel_o13);
    selector2 sel_14(sel_o08, sel_o09, addr[1], sel_o14);
    selector2 sel_15(sel_o010, sel_o011, addr[1], sel_o15);
    selector2 sel_16(sel_o012, sel_o013, addr[1], sel_o16);
    selector2 sel_17(sel_o014, sel_o015, addr[1], sel_o17);
    selector2 sel_20(sel_o10, sel_o11, addr[2], sel_o20);
    selector2 sel_21(sel_o12, sel_o13, addr[2], sel_o21);
    selector2 sel_22(sel_o14, sel_o15, addr[2], sel_o22);
    selector2 sel_23(sel_o16, sel_o17, addr[2], sel_o23);
    selector2 sel_30(sel_o20, sel_o21, addr[3], sel_o30);
    selector2 sel_31(sel_o22, sel_o23, addr[3], sel_o31);
    selector2 sel_40(sel_o30, sel_o31, addr[4], oZ);
endmodule

//32位16选一选择器，结构级描述
module selector16(
    input [31:0] iC0,iC1,iC2,iC3,iC4,iC5,iC6,iC7,
    input [31:0] iC8,iC9,iC10,iC11,iC12,iC13,iC14,iC15,
    input [4:0] addr,
    output  [31:0] oZ
    );
    wire [31:0] sel_o00, sel_o01, sel_o02, sel_o03, sel_o04, sel_o05, sel_o06, sel_o07;
    wire [31:0] sel_o10, sel_o11, sel_o12, sel_o13, sel_o20, sel_o21, sel_o30;
    selector2 sel_00(iC0, iC1, addr[0], sel_o00);
    selector2 sel_01(iC2, iC3, addr[0], sel_o01);
    selector2 sel_02(iC4, iC5, addr[0], sel_o02);
    selector2 sel_03(iC6, iC7, addr[0], sel_o03);
    selector2 sel_04(iC8, iC9, addr[0], sel_o04);
    selector2 sel_05(iC10, iC11, addr[0], sel_o05);
    selector2 sel_06(iC12, iC13, addr[0], sel_o06);
    selector2 sel_07(iC14, iC15, addr[0], sel_o07);
    selector2 sel_10(sel_o00, sel_o01, addr[1], sel_o10);
    selector2 sel_11(sel_o02, sel_o03, addr[1], sel_o11);
    selector2 sel_12(sel_o04, sel_o05, addr[1], sel_o12);
    selector2 sel_13(sel_o06, sel_o07, addr[1], sel_o13);
    selector2 sel_20(sel_o10, sel_o11, addr[2], sel_o20);
    selector2 sel_21(sel_o12, sel_o13, addr[2], sel_o21);
    selector2 sel_30(sel_o20, sel_o21, addr[3], oZ);
endmodule

//32位4选一选择器，结构级描述
module selector4(
    input [31:0] iC0,iC1,iC2,iC3,
    input [1:0] addr,
    output [31:0] oZ
    );
    wire [31:0] sel_o1, sel_o2;
    selector2 sel_0(iC0, iC1, addr[0], sel_o1);
    selector2 sel_1(iC0, iC1, addr[0], sel_o2);
    selector2 sel_2(sel_o1, sel_o2, addr[1], sel_o1);
endmodule

//32位2选一选择器，数据流描述
module selector2(
    input [31:0] iC0,iC1,
    input addr,
    output [31:0] oZ
    );
    assign oZ = addr ? iC1 : iC0;
endmodule

//5位2选一选择器，数据流级描述
module selector2_5b(
    input [4:0] iC0,iC1,
    input addr,
    output [4:0] oZ
    );
    assign oZ = addr ? iC1 : iC0;
endmodule


module decoder32(
    input [4:0] iData,
    input iEna,
    output [31:0] oData
    );
    assign oData[0] = (iData == 5'h0) ? iEna : 0;
    assign oData[1] = (iData == 5'h1) ? iEna : 0;
    assign oData[2] = (iData == 5'h2) ? iEna : 0;
    assign oData[3] = (iData == 5'h3) ? iEna : 0;
    assign oData[4] = (iData == 5'h4) ? iEna : 0;
    assign oData[5] = (iData == 5'h5) ? iEna : 0;
    assign oData[6] = (iData == 5'h6) ? iEna : 0;
    assign oData[7] = (iData == 5'h7) ? iEna : 0;
    assign oData[8] = (iData == 5'h8) ? iEna : 0;
    assign oData[9] = (iData == 5'h9) ? iEna : 0;
    assign oData[10] = (iData == 5'ha) ? iEna : 0;
    assign oData[11] = (iData == 5'hb) ? iEna : 0;
    assign oData[12] = (iData == 5'hc) ? iEna : 0;
    assign oData[13] = (iData == 5'hd) ? iEna : 0;
    assign oData[14] = (iData == 5'he) ? iEna : 0;
    assign oData[15] = (iData == 5'hf) ? iEna : 0;
    assign oData[16] = (iData == 5'h10) ? iEna : 0;
    assign oData[17] = (iData == 5'h11) ? iEna : 0;
    assign oData[18] = (iData == 5'h12) ? iEna : 0;
    assign oData[19] = (iData == 5'h13) ? iEna : 0;
    assign oData[20] = (iData == 5'h14) ? iEna : 0;
    assign oData[21] = (iData == 5'h15) ? iEna : 0;
    assign oData[22] = (iData == 5'h16) ? iEna : 0;
    assign oData[23] = (iData == 5'h17) ? iEna : 0;
    assign oData[24] = (iData == 5'h18) ? iEna : 0;
    assign oData[25] = (iData == 5'h19) ? iEna : 0;
    assign oData[26] = (iData == 5'h1a) ? iEna : 0;
    assign oData[27] = (iData == 5'h1b) ? iEna : 0;
    assign oData[28] = (iData == 5'h1c) ? iEna : 0;
    assign oData[29] = (iData == 5'h1d) ? iEna : 0;
    assign oData[30] = (iData == 5'h1e) ? iEna : 0;
    assign oData[31] = (iData == 5'h1f) ? iEna : 0;
endmodule

module mem_decoder(
    input [31:0] imem,
    input iEna,
    output [54:0] op
    );
    wire rop, iop, jop, reg_ari, reg_shift, reg_md, spe, sop, lop, reg_mv, cp0;
    assign rop = (imem[31:26] == 6'b0) & iEna;
    assign iop = (imem[31] == 1'b0 && imem[30] == 1'b0 && imem[29] == 1'b1) & iEna;
    assign spe = (imem[31:29] == 3'b011) & iEna;
    assign jop = (imem[31:29] == 3'b000) & iEna;
    assign lop = (imem[31:29] == 3'b100) & iEna;
    assign sop = (imem[31:29] == 3'b101) & iEna;
    assign cp0 = (imem[31:29] == 3'b010) & iEna;
    assign reg_ari = (imem[5:3] == 3'b100) & rop;
    assign reg_md = (imem[5:3] == 3'b011) & rop;
    assign reg_shift = (imem[5:3] == 3'b000) & rop ;
    assign reg_mv = (imem[5:3] == 3'b010) & rop;
    assign op[0] = (imem[2:0] == 3'b001) & reg_ari;
    assign op[1] = (imem[2:0] == 3'b000) & reg_ari;
    assign op[2] = (imem[2:0] == 3'b011) & reg_ari;
    assign op[3] = (imem[2:0] == 3'b010) & reg_ari;
    assign op[4] = (imem[2:0] == 3'b100) & reg_ari;
    assign op[5] = (imem[2:0] == 3'b101) & reg_ari;
    assign op[6] = (imem[2:0] == 3'b110) & reg_ari;
    assign op[7] = (imem[2:0] == 3'b111) & reg_ari;
    assign op[31] = (imem[1:0] == 3'b10) & reg_md;
    assign op[32] = (imem[1:0] == 3'b11) & reg_md;
    assign op[33] = (imem[1:0] == 3'b00) & reg_md;
    assign op[34] = (imem[1:0] == 3'b01) & reg_md;
    assign op[44] = (imem[1:0] == 2'b00) & reg_mv;
    assign op[45] = (imem[1:0] == 2'b01) & reg_mv;
    assign op[46] = (imem[1:0] == 2'b10) & reg_mv;
    assign op[47] = (imem[1:0] == 2'b11) & reg_mv;
    assign op[8] = (imem[2:0] == 3'b100) & reg_shift;
    assign op[9] = (imem[2:0] == 3'b110) & reg_shift;
    assign op[10] = (imem[2:0] == 3'b111) & reg_shift;
    assign op[13] = (imem[2:0] == 3'b000) & reg_shift;
    assign op[14] = (imem[2:0] == 3'b010) & reg_shift;
    assign op[15] = (imem[2:0] == 3'b011) & reg_shift;
    assign op[11] = (imem[5:0] == 6'b101010) & rop;
    assign op[12] = (imem[5:0] == 6'b101011) & rop;
    assign op[30] = (imem[5:0] == 6'b001000) & rop;
    assign op[52] = (imem[5:0] == 6'b001100) & rop;
    assign op[53] = (imem[5:0] == 6'b001101) & rop;
    assign op[54] = (imem[5:0] == 6'b110100) & rop;
    assign op[16] = (imem[28:26] == 3'b000) & iop;
    assign op[17] = (imem[28:26] == 3'b001) & iop;
    assign op[18] = (imem[28:26] == 3'b100) & iop;
    assign op[19] = (imem[28:26] == 3'b101) & iop;
    assign op[20] = (imem[28:26] == 3'b110) & iop;
    assign op[21] = (imem[28:26] == 3'b010) & iop;
    assign op[22] = (imem[28:26] == 3'b011) & iop;
    assign op[23] = (imem[28:26] == 3'b111) & iop;
    assign op[24] = (imem[28:26] == 3'b011) & lop;
    assign op[38] = (imem[28:26] == 3'b100) & lop;
    assign op[39] = (imem[28:26] == 3'b101) & lop;
    assign op[40] = (imem[28:26] == 3'b000) & lop;
    assign op[41] = (imem[28:26] == 3'b001) & lop;
    assign op[25] = (imem[28:26] == 3'b011) & sop;
    assign op[42] = (imem[28:26] == 3'b000) & sop;
    assign op[43] = (imem[28:26] == 3'b001) & sop;
    assign op[26] = (imem[28:26] == 3'b100) & jop;
    assign op[27] = (imem[28:26] == 3'b101) & jop;
    assign op[28] = (imem[28:26] == 3'b010) & jop;
    assign op[29] = (imem[28:26] == 3'b011) & jop;
    assign op[36] = (imem[28:26] == 3'b001) & jop;
    assign op[37] = (imem[5:0] == 6'b001001) & rop;
    assign op[35] = (imem[1:0] == 2'b10) & spe;
    assign op[48] = ~imem[25] & ~imem[23] & cp0;
    assign op[49] = imem[23] & cp0;
    assign op[51] = imem[25] & ~imem[23] & cp0;
    assign op[50] = imem[5] & spe;
    
endmodule

//理论上它不应该出现在这里，但是运算器文件过于庞大，只好姑且放在这里
module CntLZ(
    input [31:0] iS,
    output [31:0] oR
    );
    reg [31:0] cnt;
    assign oR = cnt;
    always @ (iS)begin
        if(iS[31])
            cnt = 32'd0;
        else if(iS[30])
            cnt = 32'd1;
        else if(iS[29])
            cnt = 32'd2;
        else if(iS[28])
            cnt = 32'd3;
        else if(iS[27])
            cnt = 32'd4;
        else if(iS[26])
            cnt = 32'd5;
        else if(iS[25])
            cnt = 32'd6;
        else if(iS[24])
            cnt = 32'd7;
        else if(iS[23])
            cnt = 32'd8;
        else if(iS[22])
            cnt = 32'd9;
        else if(iS[21])
            cnt = 32'd10;
        else if(iS[20])
            cnt = 32'd11;
        else if(iS[19])
            cnt = 32'd12;
        else if(iS[18])
            cnt = 32'd13;
        else if(iS[17])
            cnt = 32'd14;
        else if(iS[16])
            cnt = 32'd15;
        else if(iS[15])
            cnt = 32'd16;
        else if(iS[14])
            cnt = 32'd17;
        else if(iS[13])
            cnt = 32'd18;
        else if(iS[12])
            cnt = 32'd19;
        else if(iS[11])
            cnt = 32'd20;
        else if(iS[10])
            cnt = 32'd21;
        else if(iS[9])
            cnt = 32'd22;
        else if(iS[8])
            cnt = 32'd23;
        else if(iS[7])
            cnt = 32'd24;
        else if(iS[6])
            cnt = 32'd25;
        else if(iS[5])
            cnt = 32'd26;
        else if(iS[4])
            cnt = 32'd27;
        else if(iS[3])
            cnt = 32'd28;
        else if(iS[2])
            cnt = 32'd29;
        else if(iS[1])
            cnt = 32'd30;
        else if(iS[0])
            cnt = 32'd31;
        else cnt = 32'd32;
    end
endmodule