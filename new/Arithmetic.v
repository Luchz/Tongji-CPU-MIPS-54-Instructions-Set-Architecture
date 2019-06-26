`timescale 1ns / 1ns
//本文件包含54条CPU指令所需的所有算术运算器和逻辑运算器
//行为级ALU，低效，低技术含量，不好看，但是好用！！！
module alu(
    input [31:0] a,
    input [31:0] b,
    input [3:0] aluc,
    output [31:0] r,
    output zero,
    output carry,
    output negative,
    output overflow
    );
    reg signed [32:0] sa, sb;
    reg [32:0] ua, ub, re;
    reg nega = 0, over = 0, carr = 0, zer = 0;
    always @ (*)
        begin
            sa = {a[31],a[31:0]};
            sb = {b[31],b[31:0]};
            ua = {1'b0, a[31:0]};
            ub = {1'b0, b[31:0]};
            zer = 0;
            carr = 0;
            nega = 0;
            over = 0;
            case(aluc)
                4'b0000:begin
                    re = ua[32:0] + ub[32:0];
                    carr = re[32];
                        end
                4'b0010:begin
                    re = sa + sb;
                    over = (!(sa[31] ^ sb[31])) & (re[31] ^ sa[31]) & (re[31] ^ sb[31]);
                        end
                4'b0001:begin
                    re = ua - ub;
                    if(ua<ub)
                        carr = 1;
                        end
                4'b0011:begin
                    re = sa - sb;
                    over = sa[32] ^ re[32];
                        end
                4'b0100:begin
                    re = ua & ub;
                        end
                4'b0101:begin
                    re = ua | ub;
                    end
                4'b0110:begin
                    re = ua ^ ub;
                    end
                4'b0111:begin
                    re = ~(ua | ub);
                    end
                4'b1000:begin
                    re = {ub[16:0],16'b0};
                    end
                4'b1011:begin
                    re = (sa < sb) ? 1 : 0;
                    if(re)
                        re[31] = 1;
                    if(sa == sb)
                        zer = 1;
                    end
                4'b1010:begin
                    re[0] = (ua < ub) ? 1:0;
                    carr = (ua < ub) ? 1:0;
                    if(ua == ub)
                        zer = 1;
                    end
                4'b1100:begin
                    re = sb>>>(sa-1);
                    carr = re[0];
                    re = sb>>>sa;
                    end
                4'b1111:begin
                    re = ub<<ua;
                    carr = re[32];
                    end
                4'b1101:begin
                    re = ub>>(ua-1);
                    carr = re[0];
                    re = ub>>ua;
                    end
                default:;
            endcase
            nega = re[31] | nega;
            if(aluc == 4'b1011 || aluc == 4'b1010)
                re = re & 33'h000000001;
            if(re[31:0] == 0 && aluc != 4'b1011 && aluc != 4'b1010)
                zer = 1;
       end
    assign zero = zer;
    assign negative = nega;
    assign carry = carr;
    assign overflow = over;
    assign r = re[31:0];
endmodule
//未完工的结构级ALU，失去需求，暂时搁置//
module ALU_model(
    input [31:0] a,
    input [31:0] b,
    input [3:0] aluc,
    output [31:0] r,
    output zero
    );
    wire [32:0] tmp_1, tmp_2, add_r, add_c, and_r;
    Adder add_unit(a, b, add_r, add_c);
    Ander and_unit(a, b, and_r);
    Orer or_unit(a, b, or_r);
    Xorer xor_unit(a, b, xor_r);
endmodule
//全加器（本页面核心）
module FA(
    input iA,
    input iB,
    input iC,
    output oS,
    output oC
    );
    
    xor xor_1(xor1_o,iA,iB);
    xor xor_2(oS,xor1_o,iC);
    and and_1(and1_o,iA,iB);
    and and_2(and2_o,iC, xor1_o);
    or(oC, and1_o, and2_o);
endmodule
//32位加法器
module Adder(
    input [31:0] iData_a,
    input [31:0] iData_b,
    output [31:0] oData,
    output oData_C
    );
    FA FA_0(.iA(iData_a[0]),.iB(iData_b[0]),.iC(1'b0),.oS(oData[0]),.oC(oC1));
    FA FA_1(.iA(iData_a[1]),.iB(iData_b[1]),.iC(oC1),.oS(oData[1]),.oC(oC2));
    FA FA_2(.iA(iData_a[2]),.iB(iData_b[2]),.iC(oC2),.oS(oData[2]),.oC(oC3));
    FA FA_3(.iA(iData_a[3]),.iB(iData_b[3]),.iC(oC3),.oS(oData[3]),.oC(oC4));
    FA FA_4(.iA(iData_a[4]),.iB(iData_b[4]),.iC(oC4),.oS(oData[4]),.oC(oC5));
    FA FA_5(.iA(iData_a[5]),.iB(iData_b[5]),.iC(oC5),.oS(oData[5]),.oC(oC6));
    FA FA_6(.iA(iData_a[6]),.iB(iData_b[6]),.iC(oC6),.oS(oData[6]),.oC(oC7));
    FA FA_7(.iA(iData_a[7]),.iB(iData_b[7]),.iC(oC7),.oS(oData[7]),.oC(oC8));
    FA FA_8(.iA(iData_a[8]),.iB(iData_b[8]),.iC(oC8),.oS(oData[8]),.oC(oC9));
    FA FA_9(.iA(iData_a[9]),.iB(iData_b[9]),.iC(oC9),.oS(oData[9]),.oC(oC10));
    FA FA_10(.iA(iData_a[10]),.iB(iData_b[10]),.iC(oC10),.oS(oData[10]),.oC(oC11));
    FA FA_11(.iA(iData_a[11]),.iB(iData_b[11]),.iC(oC11),.oS(oData[11]),.oC(oC12));
    FA FA_12(.iA(iData_a[12]),.iB(iData_b[12]),.iC(oC12),.oS(oData[12]),.oC(oC13));
    FA FA_13(.iA(iData_a[13]),.iB(iData_b[13]),.iC(oC13),.oS(oData[13]),.oC(oC14));
    FA FA_14(.iA(iData_a[14]),.iB(iData_b[14]),.iC(oC14),.oS(oData[14]),.oC(oC15));
    FA FA_15(.iA(iData_a[15]),.iB(iData_b[15]),.iC(oC15),.oS(oData[15]),.oC(oC16));
    FA FA_16(.iA(iData_a[16]),.iB(iData_b[16]),.iC(oC16),.oS(oData[16]),.oC(oC17));
    FA FA_17(.iA(iData_a[17]),.iB(iData_b[17]),.iC(oC17),.oS(oData[17]),.oC(oC18));
    FA FA_18(.iA(iData_a[18]),.iB(iData_b[18]),.iC(oC18),.oS(oData[18]),.oC(oC19));
    FA FA_19(.iA(iData_a[19]),.iB(iData_b[19]),.iC(oC19),.oS(oData[19]),.oC(oC20));
    FA FA_20(.iA(iData_a[20]),.iB(iData_b[20]),.iC(oC20),.oS(oData[20]),.oC(oC21));
    FA FA_21(.iA(iData_a[21]),.iB(iData_b[21]),.iC(oC21),.oS(oData[21]),.oC(oC22));
    FA FA_22(.iA(iData_a[22]),.iB(iData_b[22]),.iC(oC22),.oS(oData[22]),.oC(oC23));
    FA FA_23(.iA(iData_a[23]),.iB(iData_b[23]),.iC(oC23),.oS(oData[23]),.oC(oC24));
    FA FA_24(.iA(iData_a[24]),.iB(iData_b[24]),.iC(oC24),.oS(oData[24]),.oC(oC25));
    FA FA_25(.iA(iData_a[25]),.iB(iData_b[25]),.iC(oC25),.oS(oData[25]),.oC(oC26));
    FA FA_26(.iA(iData_a[26]),.iB(iData_b[26]),.iC(oC26),.oS(oData[26]),.oC(oC27));
    FA FA_27(.iA(iData_a[27]),.iB(iData_b[27]),.iC(oC27),.oS(oData[27]),.oC(oC28));
    FA FA_28(.iA(iData_a[28]),.iB(iData_b[28]),.iC(oC28),.oS(oData[28]),.oC(oC29));
    FA FA_29(.iA(iData_a[29]),.iB(iData_b[29]),.iC(oC29),.oS(oData[29]),.oC(oC30));
    FA FA_30(.iA(iData_a[30]),.iB(iData_b[30]),.iC(oC30),.oS(oData[30]),.oC(oC31));
    FA FA_31(.iA(iData_a[31]),.iB(iData_b[31]),.iC(oC31),.oS(oData[31]),.oC(oData_C));
endmodule
//32位与运算单元
module Ander(
    input [31:0] a,
    input [31:0] b,
    output [31:0] c
);
    and and_0(a[0], b[0], c[0]);
    and and_1(a[1], b[1], c[1]);
    and and_2(a[2], b[2], c[2]);
    and and_3(a[3], b[3], c[3]);
    and and_4(a[4], b[4], c[4]);
    and and_5(a[5], b[5], c[5]);
    and and_6(a[6], b[6], c[6]);
    and and_7(a[7], b[7], c[7]);
    and and_8(a[8], b[8], c[8]);
    and and_9(a[9], b[9], c[9]);
    and and_10(a[10], b[10], c[10]);
    and and_11(a[11], b[11], c[11]);
    and and_12(a[12], b[12], c[12]);
    and and_13(a[13], b[13], c[13]);
    and and_14(a[14], b[14], c[14]);
    and and_15(a[15], b[15], c[15]);
    and and_16(a[16], b[16], c[16]);
    and and_17(a[17], b[17], c[17]);
    and and_18(a[18], b[18], c[18]);
    and and_19(a[19], b[19], c[19]);
    and and_20(a[20], b[20], c[20]);
    and and_21(a[21], b[21], c[21]);
    and and_22(a[22], b[22], c[22]);
    and and_23(a[23], b[23], c[23]);
    and and_24(a[24], b[24], c[24]);
    and and_25(a[25], b[25], c[25]);
    and and_26(a[26], b[26], c[26]);
    and and_27(a[27], b[27], c[27]);
    and and_28(a[28], b[28], c[28]);
    and and_29(a[29], b[29], c[29]);
    and and_30(a[30], b[30], c[30]);
    and and_31(a[31], b[31], c[31]);
endmodule
//32位异或运算单元
module Xorer(
    input [31:0] a,
    input [31:0] b,
    output [31:0] c
);
    xor xor_0(a[0], b[0], c[0]);
    xor xor_1(a[1], b[1], c[1]);
    xor xor_2(a[2], b[2], c[2]);
    xor xor_3(a[3], b[3], c[3]);
    xor xor_4(a[4], b[4], c[4]);
    xor xor_5(a[5], b[5], c[5]);
    xor xor_6(a[6], b[6], c[6]);
    xor xor_7(a[7], b[7], c[7]);
    xor xor_8(a[8], b[8], c[8]);
    xor xor_9(a[9], b[9], c[9]);
    xor xor_10(a[10], b[10], c[10]);
    xor xor_11(a[11], b[11], c[11]);
    xor xor_12(a[12], b[12], c[12]);
    xor xor_13(a[13], b[13], c[13]);
    xor xor_14(a[14], b[14], c[14]);
    xor xor_15(a[15], b[15], c[15]);
    xor xor_16(a[16], b[16], c[16]);
    xor xor_17(a[17], b[17], c[17]);
    xor xor_18(a[18], b[18], c[18]);
    xor xor_19(a[19], b[19], c[19]);
    xor xor_20(a[20], b[20], c[20]);
    xor xor_21(a[21], b[21], c[21]);
    xor xor_22(a[22], b[22], c[22]);
    xor xor_23(a[23], b[23], c[23]);
    xor xor_24(a[24], b[24], c[24]);
    xor xor_25(a[25], b[25], c[25]);
    xor xor_26(a[26], b[26], c[26]);
    xor xor_27(a[27], b[27], c[27]);
    xor xor_28(a[28], b[28], c[28]);
    xor xor_29(a[29], b[29], c[29]);
    xor xor_30(a[30], b[30], c[30]);
    xor xor_31(a[31], b[31], c[31]);
endmodule
//32位或运算单元
module Orer(
    input [31:0] a,
    input [31:0] b,
    output [31:0] c
);
    or or_0(a[0], b[0], c[0]);
    or or_1(a[1], b[1], c[1]);
    or or_2(a[2], b[2], c[2]);
    or or_3(a[3], b[3], c[3]);
    or or_4(a[4], b[4], c[4]);
    or or_5(a[5], b[5], c[5]);
    or or_6(a[6], b[6], c[6]);
    or or_7(a[7], b[7], c[7]);
    or or_8(a[8], b[8], c[8]);
    or or_9(a[9], b[9], c[9]);
    or or_10(a[10], b[10], c[10]);
    or or_11(a[11], b[11], c[11]);
    or or_12(a[12], b[12], c[12]);
    or or_13(a[13], b[13], c[13]);
    or or_14(a[14], b[14], c[14]);
    or or_15(a[15], b[15], c[15]);
    or or_16(a[16], b[16], c[16]);
    or or_17(a[17], b[17], c[17]);
    or or_18(a[18], b[18], c[18]);
    or or_19(a[19], b[19], c[19]);
    or or_20(a[20], b[20], c[20]);
    or or_21(a[21], b[21], c[21]);
    or or_22(a[22], b[22], c[22]);
    or or_23(a[23], b[23], c[23]);
    or or_24(a[24], b[24], c[24]);
    or or_25(a[25], b[25], c[25]);
    or or_26(a[26], b[26], c[26]);
    or or_27(a[27], b[27], c[27]);
    or or_28(a[28], b[28], c[28]);
    or or_29(a[29], b[29], c[29]);
    or or_30(a[30], b[30], c[30]);
    or or_31(a[31], b[31], c[31]);
endmodule
/******************************************************************/
/**************************阵列式乘法器****************************/
/******************************************************************/
//乘法加法器
module Cell(
    input a,
    input b,
    input cin,
    input rin,
    output cout,
    output rout
    );
    and and_1(and_out, a, b);
    FA add_1(and_out, rin, cin, rout, cout);
endmodule
//64位加法器列
module Line_64(
    input y,
    input [63:0] x,
    input [63:0] rin,
    output [64:0] rout
    );
    Cell Cell_1(x[0], y, 1'b0, rin[0], cout_1, rout[0]);
    Cell Cell_2(x[1], y, cout_1, rin[1], cout_2, rout[1]);
    Cell Cell_3(x[2], y, cout_2, rin[2], cout_3, rout[2]);
    Cell Cell_4(x[3], y, cout_3, rin[3], cout_4, rout[3]);
    Cell Cell_5(x[4], y, cout_4, rin[4], cout_5, rout[4]);
    Cell Cell_6(x[5], y, cout_5, rin[5], cout_6, rout[5]);
    Cell Cell_7(x[6], y, cout_6, rin[6], cout_7, rout[6]);
    Cell Cell_8(x[7], y, cout_7, rin[7], cout_8, rout[7]);
    Cell Cell_9(x[8], y, cout_8, rin[8], cout_9, rout[8]);
    Cell Cell_10(x[9], y, cout_9, rin[9], cout_10, rout[9]);
    Cell Cell_11(x[10], y, cout_10, rin[10], cout_11, rout[10]);
    Cell Cell_12(x[11], y, cout_11, rin[11], cout_12, rout[11]);
    Cell Cell_13(x[12], y, cout_12, rin[12], cout_13, rout[12]);
    Cell Cell_14(x[13], y, cout_13, rin[13], cout_14, rout[13]);
    Cell Cell_15(x[14], y, cout_14, rin[14], cout_15, rout[14]);
    Cell Cell_16(x[15], y, cout_15, rin[15], cout_16, rout[15]);
    Cell Cell_17(x[16], y, cout_16, rin[16], cout_17, rout[16]);
    Cell Cell_18(x[17], y, cout_17, rin[17], cout_18, rout[17]);
    Cell Cell_19(x[18], y, cout_18, rin[18], cout_19, rout[18]);
    Cell Cell_20(x[19], y, cout_19, rin[19], cout_20, rout[19]);
    Cell Cell_21(x[20], y, cout_20, rin[20], cout_21, rout[20]);
    Cell Cell_22(x[21], y, cout_21, rin[21], cout_22, rout[21]);
    Cell Cell_23(x[22], y, cout_22, rin[22], cout_23, rout[22]);
    Cell Cell_24(x[23], y, cout_23, rin[23], cout_24, rout[23]);
    Cell Cell_25(x[24], y, cout_24, rin[24], cout_25, rout[24]);
    Cell Cell_26(x[25], y, cout_25, rin[25], cout_26, rout[25]);
    Cell Cell_27(x[26], y, cout_26, rin[26], cout_27, rout[26]);
    Cell Cell_28(x[27], y, cout_27, rin[27], cout_28, rout[27]);
    Cell Cell_29(x[28], y, cout_28, rin[28], cout_29, rout[28]);
    Cell Cell_30(x[29], y, cout_29, rin[29], cout_30, rout[29]);
    Cell Cell_31(x[30], y, cout_30, rin[30], cout_31, rout[30]);
    Cell Cell_32(x[31], y, cout_31, rin[31], cout_32, rout[31]);
    Cell Cell_33(x[32], y, cout_32, rin[32], cout_33, rout[32]);
    Cell Cell_34(x[33], y, cout_33, rin[33], cout_34, rout[33]);
    Cell Cell_35(x[34], y, cout_34, rin[34], cout_35, rout[34]);
    Cell Cell_36(x[35], y, cout_35, rin[35], cout_36, rout[35]);
    Cell Cell_37(x[36], y, cout_36, rin[36], cout_37, rout[36]);
    Cell Cell_38(x[37], y, cout_37, rin[37], cout_38, rout[37]);
    Cell Cell_39(x[38], y, cout_38, rin[38], cout_39, rout[38]);
    Cell Cell_40(x[39], y, cout_39, rin[39], cout_40, rout[39]);
    Cell Cell_41(x[40], y, cout_40, rin[40], cout_41, rout[40]);
    Cell Cell_42(x[41], y, cout_41, rin[41], cout_42, rout[41]);
    Cell Cell_43(x[42], y, cout_42, rin[42], cout_43, rout[42]);
    Cell Cell_44(x[43], y, cout_43, rin[43], cout_44, rout[43]);
    Cell Cell_45(x[44], y, cout_44, rin[44], cout_45, rout[44]);
    Cell Cell_46(x[45], y, cout_45, rin[45], cout_46, rout[45]);
    Cell Cell_47(x[46], y, cout_46, rin[46], cout_47, rout[46]);
    Cell Cell_48(x[47], y, cout_47, rin[47], cout_48, rout[47]);
    Cell Cell_49(x[48], y, cout_48, rin[48], cout_49, rout[48]);
    Cell Cell_50(x[49], y, cout_49, rin[49], cout_50, rout[49]);
    Cell Cell_51(x[50], y, cout_50, rin[50], cout_51, rout[50]);
    Cell Cell_52(x[51], y, cout_51, rin[51], cout_52, rout[51]);
    Cell Cell_53(x[52], y, cout_52, rin[52], cout_53, rout[52]);
    Cell Cell_54(x[53], y, cout_53, rin[53], cout_54, rout[53]);
    Cell Cell_55(x[54], y, cout_54, rin[54], cout_55, rout[54]);
    Cell Cell_56(x[55], y, cout_55, rin[55], cout_56, rout[55]);
    Cell Cell_57(x[56], y, cout_56, rin[56], cout_57, rout[56]);
    Cell Cell_58(x[57], y, cout_57, rin[57], cout_58, rout[57]);
    Cell Cell_59(x[58], y, cout_58, rin[58], cout_59, rout[58]);
    Cell Cell_60(x[59], y, cout_59, rin[59], cout_60, rout[59]);
    Cell Cell_61(x[60], y, cout_60, rin[60], cout_61, rout[60]);
    Cell Cell_62(x[61], y, cout_61, rin[61], cout_62, rout[61]);
    Cell Cell_63(x[62], y, cout_62, rin[62], cout_63, rout[62]);
    Cell Cell_64(x[63], y, cout_63, rin[63], rout[64], rout[63]);
endmodule
//32位阵列式单周期通用快速乘法器
module GMUL(
    input [31:0] x, // 输入 a(被乘数)
    input [31:0] y, // 输入 b(乘数)
    input sign,
    output [63:0] z // 乘积输出 z
    );
    wire empty;
    assign z[63] = z[62];
    wire [63:0] tmp_1, tmp_2;
    assign tmp_1 = (sign & x[31]) ? {32'hffffffff, x} : {32'h0, x};
    assign tmp_2 = sign ? (x[31] ? {32'hffffffff, ~x + 32'b1} : {32'h0, ~x + 32'b1}) : {32'h0, x};
    wire [63:0] rout_1, rout_2, rout_3, rout_4, 
    rout_5, rout_6, rout_7, rout_8, rout_9, rout_10, rout_11, 
    rout_12, rout_13, rout_14, rout_15, rout_16, rout_17, rout_18, 
    rout_19, rout_20, rout_21, rout_22, rout_23, rout_24, rout_25, 
    rout_26, rout_27, rout_28, rout_29, rout_30, rout_31, rout_32;
    Line_64 Line_1(y[0], tmp_1, 64'b0, {rout_1[63:0], z[0]});
    Line_64 Line_2(y[1], tmp_1, rout_1[63:0], {rout_2[63:0], z[1]});
    Line_64 Line_3(y[2], tmp_1, rout_2[63:0], {rout_3[63:0], z[2]});
    Line_64 Line_4(y[3], tmp_1, rout_3[63:0], {rout_4[63:0], z[3]});
    Line_64 Line_5(y[4], tmp_1, rout_4[63:0], {rout_5[63:0], z[4]});
    Line_64 Line_6(y[5], tmp_1, rout_5[63:0], {rout_6[63:0], z[5]});
    Line_64 Line_7(y[6], tmp_1, rout_6[63:0], {rout_7[63:0], z[6]});
    Line_64 Line_8(y[7], tmp_1, rout_7[63:0], {rout_8[63:0], z[7]});
    Line_64 Line_9(y[8], tmp_1, rout_8[63:0], {rout_9[63:0], z[8]});
    Line_64 Line_10(y[9], tmp_1, rout_9[63:0], {rout_10[63:0], z[9]});
    Line_64 Line_11(y[10], tmp_1, rout_10[63:0], {rout_11[63:0], z[10]});
    Line_64 Line_12(y[11], tmp_1, rout_11[63:0], {rout_12[63:0], z[11]});
    Line_64 Line_13(y[12], tmp_1, rout_12[63:0], {rout_13[63:0], z[12]});
    Line_64 Line_14(y[13], tmp_1, rout_13[63:0], {rout_14[63:0], z[13]});
    Line_64 Line_15(y[14], tmp_1, rout_14[63:0], {rout_15[63:0], z[14]});
    Line_64 Line_16(y[15], tmp_1, rout_15[63:0], {rout_16[63:0], z[15]});
    Line_64 Line_17(y[16], tmp_1, rout_16[63:0], {rout_17[63:0], z[16]});
    Line_64 Line_18(y[17], tmp_1, rout_17[63:0], {rout_18[63:0], z[17]});
    Line_64 Line_19(y[18], tmp_1, rout_18[63:0], {rout_19[63:0], z[18]});
    Line_64 Line_20(y[19], tmp_1, rout_19[63:0], {rout_20[63:0], z[19]});
    Line_64 Line_21(y[20], tmp_1, rout_20[63:0], {rout_21[63:0], z[20]});
    Line_64 Line_22(y[21], tmp_1, rout_21[63:0], {rout_22[63:0], z[21]});
    Line_64 Line_23(y[22], tmp_1, rout_22[63:0], {rout_23[63:0], z[22]});
    Line_64 Line_24(y[23], tmp_1, rout_23[63:0], {rout_24[63:0], z[23]});
    Line_64 Line_25(y[24], tmp_1, rout_24[63:0], {rout_25[63:0], z[24]});
    Line_64 Line_26(y[25], tmp_1, rout_25[63:0], {rout_26[63:0], z[25]});
    Line_64 Line_27(y[26], tmp_1, rout_26[63:0], {rout_27[63:0], z[26]});
    Line_64 Line_28(y[27], tmp_1, rout_27[63:0], {rout_28[63:0], z[27]});
    Line_64 Line_29(y[28], tmp_1, rout_28[63:0], {rout_29[63:0], z[28]});
    Line_64 Line_30(y[29], tmp_1, rout_29[63:0], {rout_30[63:0], z[29]});
    Line_64 Line_31(y[30], tmp_1, rout_30[63:0], {rout_31[63:0], z[30]});
    Line_64 Line_32(y[31], tmp_2, rout_31[63:0], {rout_32[31:0], empty, z[62:31]});
endmodule
module GMUL_behav(
    input [31:0] x, // 输入 a(被乘数)
    input [31:0] y, // 输入 b(乘数)
    input sign,
    output [63:0] z // 乘积输出 z
    );
    wire [63:0] tmp_1, tmp_2, tmp_3;
    assign tmp_1 = (sign & x[31]) ? {32'h0, ~x + 32'b1} : {32'h0, x};
    assign tmp_2 = (sign & y[31]) ? {32'h0, ~y + 32'b1} : {32'h0, y};
    assign tmp_3 = tmp_1 * tmp_2;
    assign z[63:0] = (sign & (x[31] ^ y[31])) ? 32'b1 + ~tmp_3 : tmp_3;
endmodule
/******************************************************************/
/**************************阵列式除法器****************************/
/******************************************************************/
//可控加法器
module CAS(
    input a,
    input b,
    input cin,
    input p,
    output s,
    output cout
    );
    xor xor_1(xor_o1, b, p);
    FA FA_1(a, xor_o1, cin, s, cout);
endmodule
//可控加法器列
module div_line(
    input [32:0] x,
    input [32:0] y,
    input iP,
    output [32:0] r,
    output oP
    );
    CAS CAS_1(x[0], y[0], iP, iP, r[0], cout_1);
    CAS CAS_2(x[1], y[1], cout_1, iP, r[1], cout_2);
    CAS CAS_3(x[2], y[2], cout_2, iP, r[2], cout_3);
    CAS CAS_4(x[3], y[3], cout_3, iP, r[3], cout_4);
    CAS CAS_5(x[4], y[4], cout_4, iP, r[4], cout_5);
    CAS CAS_6(x[5], y[5], cout_5, iP, r[5], cout_6);
    CAS CAS_7(x[6], y[6], cout_6, iP, r[6], cout_7);
    CAS CAS_8(x[7], y[7], cout_7, iP, r[7], cout_8);
    CAS CAS_9(x[8], y[8], cout_8, iP, r[8], cout_9);
    CAS CAS_10(x[9], y[9], cout_9, iP, r[9], cout_10);
    CAS CAS_11(x[10], y[10], cout_10, iP, r[10], cout_11);
    CAS CAS_12(x[11], y[11], cout_11, iP, r[11], cout_12);
    CAS CAS_13(x[12], y[12], cout_12, iP, r[12], cout_13);
    CAS CAS_14(x[13], y[13], cout_13, iP, r[13], cout_14);
    CAS CAS_15(x[14], y[14], cout_14, iP, r[14], cout_15);
    CAS CAS_16(x[15], y[15], cout_15, iP, r[15], cout_16);
    CAS CAS_17(x[16], y[16], cout_16, iP, r[16], cout_17);
    CAS CAS_18(x[17], y[17], cout_17, iP, r[17], cout_18);
    CAS CAS_19(x[18], y[18], cout_18, iP, r[18], cout_19);
    CAS CAS_20(x[19], y[19], cout_19, iP, r[19], cout_20);
    CAS CAS_21(x[20], y[20], cout_20, iP, r[20], cout_21);
    CAS CAS_22(x[21], y[21], cout_21, iP, r[21], cout_22);
    CAS CAS_23(x[22], y[22], cout_22, iP, r[22], cout_23);
    CAS CAS_24(x[23], y[23], cout_23, iP, r[23], cout_24);
    CAS CAS_25(x[24], y[24], cout_24, iP, r[24], cout_25);
    CAS CAS_26(x[25], y[25], cout_25, iP, r[25], cout_26);
    CAS CAS_27(x[26], y[26], cout_26, iP, r[26], cout_27);
    CAS CAS_28(x[27], y[27], cout_27, iP, r[27], cout_28);
    CAS CAS_29(x[28], y[28], cout_28, iP, r[28], cout_29);
    CAS CAS_30(x[29], y[29], cout_29, iP, r[29], cout_30);
    CAS CAS_31(x[30], y[30], cout_30, iP, r[30], cout_31);
    CAS CAS_32(x[31], y[31], cout_31, iP, r[31], cout_32);
    CAS CAS_33(x[32], y[32], cout_32, iP, r[32], oP);
endmodule
//32位阵列式单周期通用快速除法器
module GDIV(
    input [31:0] dividend,  //被除数
    input [31:0] divisor,   //除数
    input sign,             //执行有符号（1）或无符号（0）除法
    output [31:0] q,        //运算结果：商
    output [31:0] r         //运算结果：余数
    );
    wire [32:0] sout_0, sout_1, sout_2, sout_3, sout_4, sout_5, 
    sout_6, sout_7, sout_8, sout_9, sout_10, sout_11, sout_12, 
    sout_13, sout_14, sout_15, sout_16, sout_17, sout_18, sout_19, 
    sout_20, sout_21, sout_22, sout_23, sout_24, sout_25, sout_26, 
    sout_27, sout_28, sout_29, sout_30, sout_31, sout_32;
    wire empty;
    wire [31:0] tmp_1, tmp_2, tmp_q, tmp_r;
    assign tmp_r = q[0] ? sout_0 : tmp_2 + sout_0;
    assign r = ((sign & dividend[31]) && tmp_r) ? {1'b1, ~tmp_r + 31'b1} : tmp_r;
    assign q = (sign & (dividend[31] ^ divisor[31])) && tmp_q ? {1'b1, ~tmp_q + 31'b1} : tmp_q;
    assign tmp_1[31:0] = (sign & dividend[31]) ? {1'b0, 31'b1 + ~dividend[30:0]} : dividend;
    assign tmp_2[31:0] = (sign & divisor[31]) ? {1'b0, 31'b1 + ~divisor[30:0]} : divisor;
    div_line line_1({sout_1[31:0], tmp_1[0]}, {1'b0, tmp_2}, tmp_q[1], sout_0, tmp_q[0]);
    div_line line_2({sout_2[31:0], tmp_1[1]}, {1'b0, tmp_2}, tmp_q[2], sout_1, tmp_q[1]);
    div_line line_3({sout_3[31:0], tmp_1[2]}, {1'b0, tmp_2}, tmp_q[3], sout_2, tmp_q[2]);
    div_line line_4({sout_4[31:0], tmp_1[3]}, {1'b0, tmp_2}, tmp_q[4], sout_3, tmp_q[3]);
    div_line line_5({sout_5[31:0], tmp_1[4]}, {1'b0, tmp_2}, tmp_q[5], sout_4, tmp_q[4]);
    div_line line_6({sout_6[31:0], tmp_1[5]}, {1'b0, tmp_2}, tmp_q[6], sout_5, tmp_q[5]);
    div_line line_7({sout_7[31:0], tmp_1[6]}, {1'b0, tmp_2}, tmp_q[7], sout_6, tmp_q[6]);
    div_line line_8({sout_8[31:0], tmp_1[7]}, {1'b0, tmp_2}, tmp_q[8], sout_7, tmp_q[7]);
    div_line line_9({sout_9[31:0], tmp_1[8]}, {1'b0, tmp_2}, tmp_q[9], sout_8, tmp_q[8]);
    div_line line_10({sout_10[31:0], tmp_1[9]}, {1'b0, tmp_2}, tmp_q[10], sout_9, tmp_q[9]);
    div_line line_11({sout_11[31:0], tmp_1[10]}, {1'b0, tmp_2}, tmp_q[11], sout_10, tmp_q[10]);
    div_line line_12({sout_12[31:0], tmp_1[11]}, {1'b0, tmp_2}, tmp_q[12], sout_11, tmp_q[11]);
    div_line line_13({sout_13[31:0], tmp_1[12]}, {1'b0, tmp_2}, tmp_q[13], sout_12, tmp_q[12]);
    div_line line_14({sout_14[31:0], tmp_1[13]}, {1'b0, tmp_2}, tmp_q[14], sout_13, tmp_q[13]);
    div_line line_15({sout_15[31:0], tmp_1[14]}, {1'b0, tmp_2}, tmp_q[15], sout_14, tmp_q[14]);
    div_line line_16({sout_16[31:0], tmp_1[15]}, {1'b0, tmp_2}, tmp_q[16], sout_15, tmp_q[15]);
    div_line line_17({sout_17[31:0], tmp_1[16]}, {1'b0, tmp_2}, tmp_q[17], sout_16, tmp_q[16]);
    div_line line_18({sout_18[31:0], tmp_1[17]}, {1'b0, tmp_2}, tmp_q[18], sout_17, tmp_q[17]);
    div_line line_19({sout_19[31:0], tmp_1[18]}, {1'b0, tmp_2}, tmp_q[19], sout_18, tmp_q[18]);
    div_line line_20({sout_20[31:0], tmp_1[19]}, {1'b0, tmp_2}, tmp_q[20], sout_19, tmp_q[19]);
    div_line line_21({sout_21[31:0], tmp_1[20]}, {1'b0, tmp_2}, tmp_q[21], sout_20, tmp_q[20]);
    div_line line_22({sout_22[31:0], tmp_1[21]}, {1'b0, tmp_2}, tmp_q[22], sout_21, tmp_q[21]);
    div_line line_23({sout_23[31:0], tmp_1[22]}, {1'b0, tmp_2}, tmp_q[23], sout_22, tmp_q[22]);
    div_line line_24({sout_24[31:0], tmp_1[23]}, {1'b0, tmp_2}, tmp_q[24], sout_23, tmp_q[23]);
    div_line line_25({sout_25[31:0], tmp_1[24]}, {1'b0, tmp_2}, tmp_q[25], sout_24, tmp_q[24]);
    div_line line_26({sout_26[31:0], tmp_1[25]}, {1'b0, tmp_2}, tmp_q[26], sout_25, tmp_q[25]);
    div_line line_27({sout_27[31:0], tmp_1[26]}, {1'b0, tmp_2}, tmp_q[27], sout_26, tmp_q[26]);
    div_line line_28({sout_28[31:0], tmp_1[27]}, {1'b0, tmp_2}, tmp_q[28], sout_27, tmp_q[27]);
    div_line line_29({sout_29[31:0], tmp_1[28]}, {1'b0, tmp_2}, tmp_q[29], sout_28, tmp_q[28]);
    div_line line_30({sout_30[31:0], tmp_1[29]}, {1'b0, tmp_2}, tmp_q[30], sout_29, tmp_q[29]);
    div_line line_31({sout_31[31:0], tmp_1[30]}, {1'b0, tmp_2}, tmp_q[31], sout_30, tmp_q[30]);
    div_line line_32({sout_32[31:0], tmp_1[31]}, {1'b0, tmp_2}, empty, sout_31, tmp_q[31]);
    div_line line_33(33'b0, {1'b0, tmp_2}, 1'b1, sout_32, empty);
endmodule

module GDIV_behav(
    input [31:0] dividend,  //被除数
    input [31:0] divisor,   //除数
    input sign,             //执行有符号（1）或无符号（0）除法
    output [31:0] q,        //运算结果：商
    output [31:0] r         //运算结果：余数
    );
    wire [31:0] tmp_1, tmp_2, tmp_q, tmp_r;
    assign tmp_r = tmp_1 % tmp_2;
    assign tmp_q = tmp_1 / tmp_2;
    assign r = ((sign & dividend[31]) && tmp_r) ? {1'b1, ~tmp_r + 31'b1} : tmp_r;
    assign q = (sign & (dividend[31] ^ divisor[31])) && tmp_q ? {1'b1, ~tmp_q + 31'b1} : tmp_q;
    assign tmp_1[31:0] = (sign & dividend[31]) ? {1'b0, 31'b1 + ~dividend[30:0]} : dividend;
    assign tmp_2[31:0] = (sign & divisor[31]) ? {1'b0, 31'b1 + ~divisor[30:0]} : divisor;
endmodule