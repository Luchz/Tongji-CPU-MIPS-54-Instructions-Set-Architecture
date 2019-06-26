`timescale 1ns / 1ns
/*结构级描述实现的寄存器堆，按约束要求，需改由行为级描述实现，已废弃*/
module Regfiles(
    input clk,
    input rst,
    input we,
    input [4:0] raddr1,
    input [4:0] raddr2,
    input [4:0] waddr,
    input [31:0] wdata,
    output [31:0] rdata1,
    output [31:0] rdata2
    );
    wire [31:0] data_o31,data_o30,data_o29,data_o28,data_o27,data_o26,data_o25,data_o24,data_o23,
    data_o22,data_o21,data_o20,data_o19,data_o18,data_o17,data_o16,data_o15,data_o14,data_o13,data_o12,
    data_o11,data_o10,data_o9,data_o8,data_o7,data_o6,data_o5,data_o4,data_o3,data_o2,data_o1,data_o0;
    struct_reg reg0(.clk(clk),.rst(rst),.ena(ena0),.data_in(wdata),.data_out(data_o0));
    struct_reg reg1(.clk(clk),.rst(rst),.ena(ena1),.data_in(wdata),.data_out(data_o1));
    struct_reg reg2(.clk(clk),.rst(rst),.ena(ena2),.data_in(wdata),.data_out(data_o2));
    struct_reg reg3(.clk(clk),.rst(rst),.ena(ena3),.data_in(wdata),.data_out(data_o3));
    struct_reg reg4(.clk(clk),.rst(rst),.ena(ena4),.data_in(wdata),.data_out(data_o4));
    struct_reg reg5(.clk(clk),.rst(rst),.ena(ena5),.data_in(wdata),.data_out(data_o5));
    struct_reg reg6(.clk(clk),.rst(rst),.ena(ena6),.data_in(wdata),.data_out(data_o6));
    struct_reg reg7(.clk(clk),.rst(rst),.ena(ena7),.data_in(wdata),.data_out(data_o7));
    struct_reg reg8(.clk(clk),.rst(rst),.ena(ena8),.data_in(wdata),.data_out(data_o8));
    struct_reg reg9(.clk(clk),.rst(rst),.ena(ena9),.data_in(wdata),.data_out(data_o9));
    struct_reg reg10(.clk(clk),.rst(rst),.ena(ena10),.data_in(wdata),.data_out(data_o10));
    struct_reg reg11(.clk(clk),.rst(rst),.ena(ena11),.data_in(wdata),.data_out(data_o11));
    struct_reg reg12(.clk(clk),.rst(rst),.ena(ena12),.data_in(wdata),.data_out(data_o12));
    struct_reg reg13(.clk(clk),.rst(rst),.ena(ena13),.data_in(wdata),.data_out(data_o13));
    struct_reg reg14(.clk(clk),.rst(rst),.ena(ena14),.data_in(wdata),.data_out(data_o14));
    struct_reg reg15(.clk(clk),.rst(rst),.ena(ena15),.data_in(wdata),.data_out(data_o15));
    struct_reg reg16(.clk(clk),.rst(rst),.ena(ena16),.data_in(wdata),.data_out(data_o16));
    struct_reg reg17(.clk(clk),.rst(rst),.ena(ena17),.data_in(wdata),.data_out(data_o17));
    struct_reg reg18(.clk(clk),.rst(rst),.ena(ena18),.data_in(wdata),.data_out(data_o18));
    struct_reg reg19(.clk(clk),.rst(rst),.ena(ena19),.data_in(wdata),.data_out(data_o19));
    struct_reg reg20(.clk(clk),.rst(rst),.ena(ena20),.data_in(wdata),.data_out(data_o20));
    struct_reg reg21(.clk(clk),.rst(rst),.ena(ena21),.data_in(wdata),.data_out(data_o21));
    struct_reg reg22(.clk(clk),.rst(rst),.ena(ena22),.data_in(wdata),.data_out(data_o22));
    struct_reg reg23(.clk(clk),.rst(rst),.ena(ena23),.data_in(wdata),.data_out(data_o23));
    struct_reg reg24(.clk(clk),.rst(rst),.ena(ena24),.data_in(wdata),.data_out(data_o24));
    struct_reg reg25(.clk(clk),.rst(rst),.ena(ena25),.data_in(wdata),.data_out(data_o25));
    struct_reg reg26(.clk(clk),.rst(rst),.ena(ena26),.data_in(wdata),.data_out(data_o26));
    struct_reg reg27(.clk(clk),.rst(rst),.ena(ena27),.data_in(wdata),.data_out(data_o27));
    struct_reg reg28(.clk(clk),.rst(rst),.ena(ena28),.data_in(wdata),.data_out(data_o28));
    struct_reg reg29(.clk(clk),.rst(rst),.ena(ena29),.data_in(wdata),.data_out(data_o29));
    struct_reg reg30(.clk(clk),.rst(rst),.ena(ena30),.data_in(wdata),.data_out(data_o30));
    struct_reg reg31(.clk(clk),.rst(rst),.ena(ena31),.data_in(wdata),.data_out(data_o31));
    selector32 sel1(.iC0(data_o0),.iC1(data_o1),.iC2(data_o2),.iC3(data_o3),.iC4(data_o4),
    .iC5(data_o5),.iC6(data_o6),.iC7(data_o7),.iC8(data_o8),.iC9(data_o9),.iC10(data_o10),
    .iC11(data_o11),.iC12(data_o12),.iC13(data_o13),.iC14(data_o14),.iC15(data_o15),
    .iC16(data_o16),.iC17(data_o17),.iC18(data_o18),.iC19(data_o19),.iC20(data_o20),
    .iC21(data_o21),.iC22(data_o22),.iC23(data_o23),.iC24(data_o24),.iC25(data_o25),
    .iC26(data_o26),.iC27(data_o27),.iC28(data_o28),.iC29(data_o29),.iC30(data_o30),
    .iC31(data_o31),.addr(raddr1[4:0]),.oZ(rdata1));
    selector32 sel2(.iC0(data_o0),.iC1(data_o1),.iC2(data_o2),.iC3(data_o3),.iC4(data_o4),
    .iC5(data_o5),.iC6(data_o6),.iC7(data_o7),.iC8(data_o8),.iC9(data_o9),.iC10(data_o10),
    .iC11(data_o11),.iC12(data_o12),.iC13(data_o13),.iC14(data_o14),.iC15(data_o15),
    .iC16(data_o16),.iC17(data_o17),.iC18(data_o18),.iC19(data_o19),.iC20(data_o20),
    .iC21(data_o21),.iC22(data_o22),.iC23(data_o23),.iC24(data_o24),.iC25(data_o25),
    .iC26(data_o26),.iC27(data_o27),.iC28(data_o28),.iC29(data_o29),.iC30(data_o30),
    .iC31(data_o31),.addr(raddr2[4:0]),.oZ(rdata2));
    decoder32 decoder1(.iData(waddr),.iEna(we),.oData({ena31,ena30,ena29,ena28,ena27,
    ena26,ena25,ena24,ena23,ena22,ena21,ena20,ena19,ena18,ena17,ena16,ena15,ena14,ena13,
    ena12,ena11,ena10,ena9,ena8,ena7,ena6,ena5,ena4,ena3,ena2,ena1,ena0}));
endmodule

module RegFiles(
    input clk,
    input rst,
    input we,
    input [4:0] raddr1,
    input [4:0] raddr2,
    input [4:0] waddr,
    input [31:0] wdata,
    output [31:0] rdata1,
    output [31:0] rdata2
);
    reg [31:0] array_reg [31:0];
    reg [31:0] tmp_a, tmp_b;
    wire [31:0] tmp_wdata;
    //assign rdata1 = (raddr1 == 0) ? 32'h0 : array_reg[raddr1];
    //assign rdata2 = (raddr2 == 0) ? 32'h0 : array_reg[raddr2];
    assign rdata1 = array_reg[raddr1];
    assign rdata2 = array_reg[raddr2];
    /*always @ (posedge clk)
        begin
            rdata1 = array_reg[raddr1];
            rdata2 = array_reg[raddr2];
        end*/
        
    //assign r1 = array_reg[1];
    //assign r2 = array_reg[2];
    /*always @ (*)
        begin
            rdata1 = (raddr1 == 0) ? 32'h0 : array_reg[raddr1];
            rdata2 = (raddr2 == 0) ? 32'h0 : array_reg[raddr2];
        end*/
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
            array_reg[12] <= 32'b0;
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
            if(we == 1'b1 && waddr != 5'h0)
                array_reg[waddr] <= wdata;
            end
        end
endmodule

/*module RegFiles(
    input clk,
    input rst,
    input we,
    input [4:0] raddr1,
    input [4:0] raddr2,
    input [4:0] waddr,
    input [31:0] wdata,
    output [31:0] rdata1,
    output [31:0] rdata2,
    output [31:0] r1,
    output [31:0] r2
);
    integer i;
    always @ (posedge clk or posedge rst)
        if(rst == 1'b1)
            i <= 0;
        else i <= i+1;
    assign r1 = i;
endmodule*/

module D_FF(
    input CLK,
    input D,
    input RST_n,
    output reg Q1
    );
    always @ (posedge CLK)
        if(RST_n == 1'b0)
            Q1 <= 0;
        else
            Q1 <= D;
endmodule

module nD_FF(
    input CLK,
    input D,
    input RST_n,
    output reg Q1
    );
    always @ (posedge CLK)
        if(RST_n == 1'b0)
            Q1 <= 1;
        else
            Q1 <= D;
endmodule

module struct_reg(
    input clk,
    input rst,
    input ena,
    input [31:0] data_in,
    output [31:0] data_out
    );
    wire [31:0] data;
    wire CLK;
    assign CLK = clk & (rst | ena);
    D_FF D1(.CLK(CLK),.D(data_in[0]),.RST_n(~rst),.Q1(data[0]));
    D_FF D2(.CLK(CLK),.D(data_in[1]),.RST_n(~rst),.Q1(data[1]));    
    D_FF D3(.CLK(CLK),.D(data_in[2]),.RST_n(~rst),.Q1(data[2]));
    D_FF D4(.CLK(CLK),.D(data_in[3]),.RST_n(~rst),.Q1(data[3]));
    D_FF D5(.CLK(CLK),.D(data_in[4]),.RST_n(~rst),.Q1(data[4]));
    D_FF D6(.CLK(CLK),.D(data_in[5]),.RST_n(~rst),.Q1(data[5]));
    D_FF D7(.CLK(CLK),.D(data_in[6]),.RST_n(~rst),.Q1(data[6]));
    D_FF D8(.CLK(CLK),.D(data_in[7]),.RST_n(~rst),.Q1(data[7]));
    D_FF D9(.CLK(CLK),.D(data_in[8]),.RST_n(~rst),.Q1(data[8]));
    D_FF D10(.CLK(CLK),.D(data_in[9]),.RST_n(~rst),.Q1(data[9]));
    D_FF D11(.CLK(CLK),.D(data_in[10]),.RST_n(~rst),.Q1(data[10]));
    D_FF D12(.CLK(CLK),.D(data_in[11]),.RST_n(~rst),.Q1(data[11]));
    D_FF D13(.CLK(CLK),.D(data_in[12]),.RST_n(~rst),.Q1(data[12]));
    D_FF D14(.CLK(CLK),.D(data_in[13]),.RST_n(~rst),.Q1(data[13]));
    D_FF D15(.CLK(CLK),.D(data_in[14]),.RST_n(~rst),.Q1(data[14]));
    D_FF D16(.CLK(CLK),.D(data_in[15]),.RST_n(~rst),.Q1(data[15]));
    D_FF D17(.CLK(CLK),.D(data_in[16]),.RST_n(~rst),.Q1(data[16]));
    D_FF D18(.CLK(CLK),.D(data_in[17]),.RST_n(~rst),.Q1(data[17]));
    D_FF D19(.CLK(CLK),.D(data_in[18]),.RST_n(~rst),.Q1(data[18]));
    D_FF D20(.CLK(CLK),.D(data_in[19]),.RST_n(~rst),.Q1(data[19]));
    D_FF D21(.CLK(CLK),.D(data_in[20]),.RST_n(~rst),.Q1(data[20]));
    D_FF D22(.CLK(CLK),.D(data_in[21]),.RST_n(~rst),.Q1(data[21]));
    D_FF D23(.CLK(CLK),.D(data_in[22]),.RST_n(~rst),.Q1(data[22]));
    D_FF D24(.CLK(CLK),.D(data_in[23]),.RST_n(~rst),.Q1(data[23]));
    D_FF D25(.CLK(CLK),.D(data_in[24]),.RST_n(~rst),.Q1(data[24]));
    D_FF D26(.CLK(CLK),.D(data_in[25]),.RST_n(~rst),.Q1(data[25]));
    D_FF D27(.CLK(CLK),.D(data_in[26]),.RST_n(~rst),.Q1(data[26]));
    D_FF D28(.CLK(CLK),.D(data_in[27]),.RST_n(~rst),.Q1(data[27]));
    D_FF D29(.CLK(CLK),.D(data_in[28]),.RST_n(~rst),.Q1(data[28]));
    D_FF D30(.CLK(CLK),.D(data_in[29]),.RST_n(~rst),.Q1(data[29]));
    D_FF D31(.CLK(CLK),.D(data_in[30]),.RST_n(~rst),.Q1(data[30]));
    D_FF D32(.CLK(CLK),.D(data_in[31]),.RST_n(~rst),.Q1(data[31]));
    assign data_out[31:0] = data[31:0];
endmodule

module pcreg(
    input clk,
    input rst,
    input ena,
    input [31:0] data_in,
    output [31:0] data_out
    );
    wire [31:0] data;
    wire CLK;
    assign CLK = clk & (rst | ena);
    D_FF D1(.CLK(CLK),.D(data_in[0]),.RST_n(~rst),.Q1(data[0]));
    D_FF D2(.CLK(CLK),.D(data_in[1]),.RST_n(~rst),.Q1(data[1]));    
    D_FF D3(.CLK(CLK),.D(data_in[2]),.RST_n(~rst),.Q1(data[2]));
    D_FF D4(.CLK(CLK),.D(data_in[3]),.RST_n(~rst),.Q1(data[3]));
    D_FF D5(.CLK(CLK),.D(data_in[4]),.RST_n(~rst),.Q1(data[4]));
    D_FF D6(.CLK(CLK),.D(data_in[5]),.RST_n(~rst),.Q1(data[5]));
    D_FF D7(.CLK(CLK),.D(data_in[6]),.RST_n(~rst),.Q1(data[6]));
    D_FF D8(.CLK(CLK),.D(data_in[7]),.RST_n(~rst),.Q1(data[7]));
    D_FF D9(.CLK(CLK),.D(data_in[8]),.RST_n(~rst),.Q1(data[8]));
    D_FF D10(.CLK(CLK),.D(data_in[9]),.RST_n(~rst),.Q1(data[9]));
    D_FF D11(.CLK(CLK),.D(data_in[10]),.RST_n(~rst),.Q1(data[10]));
    D_FF D12(.CLK(CLK),.D(data_in[11]),.RST_n(~rst),.Q1(data[11]));
    D_FF D13(.CLK(CLK),.D(data_in[12]),.RST_n(~rst),.Q1(data[12]));
    D_FF D14(.CLK(CLK),.D(data_in[13]),.RST_n(~rst),.Q1(data[13]));
    D_FF D15(.CLK(CLK),.D(data_in[14]),.RST_n(~rst),.Q1(data[14]));
    D_FF D16(.CLK(CLK),.D(data_in[15]),.RST_n(~rst),.Q1(data[15]));
    D_FF D17(.CLK(CLK),.D(data_in[16]),.RST_n(~rst),.Q1(data[16]));
    D_FF D18(.CLK(CLK),.D(data_in[17]),.RST_n(~rst),.Q1(data[17]));
    D_FF D19(.CLK(CLK),.D(data_in[18]),.RST_n(~rst),.Q1(data[18]));
    D_FF D20(.CLK(CLK),.D(data_in[19]),.RST_n(~rst),.Q1(data[19]));
    D_FF D21(.CLK(CLK),.D(data_in[20]),.RST_n(~rst),.Q1(data[20]));
    D_FF D22(.CLK(CLK),.D(data_in[21]),.RST_n(~rst),.Q1(data[21]));
    nD_FF D23(.CLK(CLK),.D(data_in[22]),.RST_n(~rst),.Q1(data[22]));
    D_FF D24(.CLK(CLK),.D(data_in[23]),.RST_n(~rst),.Q1(data[23]));
    D_FF D25(.CLK(CLK),.D(data_in[24]),.RST_n(~rst),.Q1(data[24]));
    D_FF D26(.CLK(CLK),.D(data_in[25]),.RST_n(~rst),.Q1(data[25]));
    D_FF D27(.CLK(CLK),.D(data_in[26]),.RST_n(~rst),.Q1(data[26]));
    D_FF D28(.CLK(CLK),.D(data_in[27]),.RST_n(~rst),.Q1(data[27]));
    D_FF D29(.CLK(CLK),.D(data_in[28]),.RST_n(~rst),.Q1(data[28]));
    D_FF D30(.CLK(CLK),.D(data_in[29]),.RST_n(~rst),.Q1(data[29]));
    D_FF D31(.CLK(CLK),.D(data_in[30]),.RST_n(~rst),.Q1(data[30]));
    D_FF D32(.CLK(CLK),.D(data_in[31]),.RST_n(~rst),.Q1(data[31]));
    assign data_out[31:0] = data[31:0];
endmodule

module behav_reg(
    input clk,
    input rst,
    input ena,
    input [31:0] data_in,
    output [31:0] data_out
);
    reg [31:0] in_reg;
    always @ (posedge clk or posedge rst)
        if(rst == 1'b1)
            in_reg <= 32'h00400000;
        else if(ena)
            in_reg <= data_in;
    assign data_out = in_reg;
endmodule

module dram(
	input clk,
    input ena,//与原ram有所不同，ena信号只控制读使能
    input wena,
    input [31:0] addr,
    input [31:0] data_in,
    input [1:0] width,
    output [31:0] data_out
);
    reg [31:0] data_inside [0:2047];
    reg [31:0] data_output;
    wire [31:0] mask_byte, mask_half, byte_1, byte_2, tmp_mask, insert_data;
    wire [31:0] first_byte, second_byte, third_byte, fourth_byte, first_half, second_half;
    wire [31:0] byte_out, half_out, out_width, full_out;
    wire [15:0] cell_16b [1:0];
    wire [7:0] cell_8b [3:0];
    assign cell_16b[1] = data_inside[addr[31:2] - 32'h4004000][31:16];
    assign cell_16b[0] = data_inside[addr[31:2] - 32'h4004000][15:0];
    assign cell_8b[3] = data_inside[addr[31:2] - 32'h4004000][31:24];
    assign cell_8b[2] = data_inside[addr[31:2] - 32'h4004000][23:16];
    assign cell_8b[1] = data_inside[addr[31:2] - 32'h4004000][15:8];
    assign cell_8b[0] = data_inside[addr[31:2] - 32'h4004000][7:0];
    assign byte_out = {24'b0, cell_8b[addr[1:0]]};
    assign half_out = {16'b0, cell_16b[addr[1]]};
    assign out_width = width[0] ? byte_out : half_out;
    assign full_out = width[1] ? out_width : data_inside[addr[31:2] - 32'h4004000];
    assign fourth_byte = {data_in[7:0], data_inside[addr[31:2] - 32'h4004000][23:0]};
    assign third_byte = {data_inside[addr[31:2] - 32'h4004000][31:24], data_in[7:0], data_inside[addr[31:2] - 32'h4004000][15:0]};
    assign second_byte = {data_inside[addr[31:2] - 32'h4004000][31:16], data_in[7:0], data_inside[addr[31:2] - 32'h4004000][7:0]};
    assign first_byte = {data_inside[addr[31:2] - 32'h4004000][23:0], data_in[7:0]};
    assign second_half = {data_in[15:0], data_inside[addr[31:2] - 32'h4004000][15:0]};
    assign first_half = {data_inside[addr[31:2] - 32'h4004000][31:16], data_in[15:0]};
    assign mask_half = addr[1] ? second_half : first_half;
    assign byte_1 = addr[0] ? second_byte : first_byte;
    assign byte_2 = addr[0] ? fourth_byte : third_byte;
    assign mask_byte = addr[1] ? byte_2 : byte_1;
    assign tmp_mask = width[0] ? mask_byte : mask_half;
    assign insert_data = width[1] ? tmp_mask : data_in;
    always @ (posedge clk)
    begin
        if(wena == 1)
            data_inside[addr[31:2] - 32'h4004000] <= insert_data;
    end
    assign data_out = ena ? full_out : 32'hzzzzzzzz;
endmodule

module iram(
	input im_r,
	input [31:0] addr,
	output [4:0] rs,//特指25-21
	output [4:0] rt,//特指20-16
	output [4:0] rd,//特指15-11
	output [4:0] shamt,
	output [15:0] imm16,
	output [25:0] imm26,
	output [31:0] imem_out
    );
    //reg [31:0] data [0:2047];
    //initial $readmemh("e:/Mars/test.txt",data);
    //reg [31:0] data_output;
    //always @ (addr)
    //   data_output = data[addr[31:2] - 30'h00100000];
    wire [31:0] data_output;
    imem data(addr[31:2] - 30'h00100000, data_output);
    assign imem_out = data_output;
    assign rd = data_output[15:11];
    assign rt = data_output[20:16];
    assign rs = data_output[25:21];
    assign imm16 = data_output[15:0];
    assign imm26 = data_output[25:0];
    assign shamt = data_output[10:6];
    
endmodule
