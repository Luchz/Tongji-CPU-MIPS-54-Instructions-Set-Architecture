-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
-- Date        : Thu Jun 20 21:49:42 2019
-- Host        : LAPTOP-F83SGMR9 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/Vivado_Project/CPU_54Set/CPU_54Set.srcs/sources_1/ip/imem/imem_sim_netlist.vhdl
-- Design      : imem
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity imem_dist_mem_gen_v8_0_10 is
  port (
    a : in STD_LOGIC_VECTOR ( 10 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of imem_dist_mem_gen_v8_0_10 : entity is 11;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of imem_dist_mem_gen_v8_0_10 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of imem_dist_mem_gen_v8_0_10 : entity is 2048;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of imem_dist_mem_gen_v8_0_10 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of imem_dist_mem_gen_v8_0_10 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of imem_dist_mem_gen_v8_0_10 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of imem_dist_mem_gen_v8_0_10 : entity is "imem.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of imem_dist_mem_gen_v8_0_10 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of imem_dist_mem_gen_v8_0_10 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of imem_dist_mem_gen_v8_0_10 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of imem_dist_mem_gen_v8_0_10 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of imem_dist_mem_gen_v8_0_10 : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of imem_dist_mem_gen_v8_0_10 : entity is "dist_mem_gen_v8_0_10";
end imem_dist_mem_gen_v8_0_10;

architecture STRUCTURE of imem_dist_mem_gen_v8_0_10 is
  signal \<const0>\ : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal g0_b10_n_0 : STD_LOGIC;
  signal g0_b12_n_0 : STD_LOGIC;
  signal g0_b16_n_0 : STD_LOGIC;
  signal g0_b17_n_0 : STD_LOGIC;
  signal g0_b18_n_0 : STD_LOGIC;
  signal g0_b19_n_0 : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal g0_b20_n_0 : STD_LOGIC;
  signal g0_b21_n_0 : STD_LOGIC;
  signal g0_b25_n_0 : STD_LOGIC;
  signal g0_b27_n_0 : STD_LOGIC;
  signal g0_b28_n_0 : STD_LOGIC;
  signal g0_b29_n_0 : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal g0_b7_n_0 : STD_LOGIC;
  signal g0_b8_n_0 : STD_LOGIC;
  signal g0_b9_n_0 : STD_LOGIC;
  signal g10_b0_n_0 : STD_LOGIC;
  signal g10_b10_n_0 : STD_LOGIC;
  signal g10_b11_n_0 : STD_LOGIC;
  signal g10_b12_n_0 : STD_LOGIC;
  signal g10_b15_n_0 : STD_LOGIC;
  signal g10_b16_n_0 : STD_LOGIC;
  signal g10_b17_n_0 : STD_LOGIC;
  signal g10_b18_n_0 : STD_LOGIC;
  signal g10_b1_n_0 : STD_LOGIC;
  signal g10_b20_n_0 : STD_LOGIC;
  signal g10_b21_n_0 : STD_LOGIC;
  signal g10_b22_n_0 : STD_LOGIC;
  signal g10_b23_n_0 : STD_LOGIC;
  signal g10_b26_n_0 : STD_LOGIC;
  signal g10_b27_n_0 : STD_LOGIC;
  signal g10_b28_n_0 : STD_LOGIC;
  signal g10_b29_n_0 : STD_LOGIC;
  signal g10_b2_n_0 : STD_LOGIC;
  signal g10_b30_n_0 : STD_LOGIC;
  signal g10_b3_n_0 : STD_LOGIC;
  signal g10_b4_n_0 : STD_LOGIC;
  signal g10_b5_n_0 : STD_LOGIC;
  signal g10_b6_n_0 : STD_LOGIC;
  signal g10_b7_n_0 : STD_LOGIC;
  signal g10_b8_n_0 : STD_LOGIC;
  signal g10_b9_n_0 : STD_LOGIC;
  signal g11_b0_n_0 : STD_LOGIC;
  signal g11_b10_n_0 : STD_LOGIC;
  signal g11_b11_n_0 : STD_LOGIC;
  signal g11_b12_n_0 : STD_LOGIC;
  signal g11_b15_n_0 : STD_LOGIC;
  signal g11_b16_n_0 : STD_LOGIC;
  signal g11_b17_n_0 : STD_LOGIC;
  signal g11_b18_n_0 : STD_LOGIC;
  signal g11_b19_n_0 : STD_LOGIC;
  signal g11_b1_n_0 : STD_LOGIC;
  signal g11_b20_n_0 : STD_LOGIC;
  signal g11_b21_n_0 : STD_LOGIC;
  signal g11_b22_n_0 : STD_LOGIC;
  signal g11_b23_n_0 : STD_LOGIC;
  signal g11_b24_n_0 : STD_LOGIC;
  signal g11_b25_n_0 : STD_LOGIC;
  signal g11_b26_n_0 : STD_LOGIC;
  signal g11_b27_n_0 : STD_LOGIC;
  signal g11_b28_n_0 : STD_LOGIC;
  signal g11_b29_n_0 : STD_LOGIC;
  signal g11_b2_n_0 : STD_LOGIC;
  signal g11_b31_n_0 : STD_LOGIC;
  signal g11_b3_n_0 : STD_LOGIC;
  signal g11_b4_n_0 : STD_LOGIC;
  signal g11_b5_n_0 : STD_LOGIC;
  signal g11_b6_n_0 : STD_LOGIC;
  signal g11_b7_n_0 : STD_LOGIC;
  signal g11_b8_n_0 : STD_LOGIC;
  signal g11_b9_n_0 : STD_LOGIC;
  signal g12_b0_n_0 : STD_LOGIC;
  signal g12_b10_n_0 : STD_LOGIC;
  signal g12_b11_n_0 : STD_LOGIC;
  signal g12_b12_n_0 : STD_LOGIC;
  signal g12_b13_n_0 : STD_LOGIC;
  signal g12_b14_n_0 : STD_LOGIC;
  signal g12_b15_n_0 : STD_LOGIC;
  signal g12_b16_n_0 : STD_LOGIC;
  signal g12_b17_n_0 : STD_LOGIC;
  signal g12_b18_n_0 : STD_LOGIC;
  signal g12_b19_n_0 : STD_LOGIC;
  signal g12_b1_n_0 : STD_LOGIC;
  signal g12_b20_n_0 : STD_LOGIC;
  signal g12_b21_n_0 : STD_LOGIC;
  signal g12_b22_n_0 : STD_LOGIC;
  signal g12_b23_n_0 : STD_LOGIC;
  signal g12_b24_n_0 : STD_LOGIC;
  signal g12_b26_n_0 : STD_LOGIC;
  signal g12_b27_n_0 : STD_LOGIC;
  signal g12_b28_n_0 : STD_LOGIC;
  signal g12_b29_n_0 : STD_LOGIC;
  signal g12_b2_n_0 : STD_LOGIC;
  signal g12_b30_n_0 : STD_LOGIC;
  signal g12_b31_n_0 : STD_LOGIC;
  signal g12_b3_n_0 : STD_LOGIC;
  signal g12_b4_n_0 : STD_LOGIC;
  signal g12_b5_n_0 : STD_LOGIC;
  signal g12_b6_n_0 : STD_LOGIC;
  signal g12_b7_n_0 : STD_LOGIC;
  signal g12_b8_n_0 : STD_LOGIC;
  signal g13_b0_n_0 : STD_LOGIC;
  signal g13_b10_n_0 : STD_LOGIC;
  signal g13_b1_n_0 : STD_LOGIC;
  signal g13_b20_n_0 : STD_LOGIC;
  signal g13_b27_n_0 : STD_LOGIC;
  signal \g13_b29__0_n_0\ : STD_LOGIC;
  signal \g13_b29__1_n_0\ : STD_LOGIC;
  signal \g13_b29__2_n_0\ : STD_LOGIC;
  signal \g13_b29__3_n_0\ : STD_LOGIC;
  signal \g13_b29__4_n_0\ : STD_LOGIC;
  signal \g13_b29__5_n_0\ : STD_LOGIC;
  signal \g13_b29__6_n_0\ : STD_LOGIC;
  signal g13_b29_n_0 : STD_LOGIC;
  signal g13_b2_n_0 : STD_LOGIC;
  signal g13_b31_n_0 : STD_LOGIC;
  signal g13_b3_n_0 : STD_LOGIC;
  signal g14_b4_n_0 : STD_LOGIC;
  signal g16_b0_n_0 : STD_LOGIC;
  signal g16_b1_n_0 : STD_LOGIC;
  signal g16_b3_n_0 : STD_LOGIC;
  signal g16_b6_n_0 : STD_LOGIC;
  signal \g17_b6__0_n_0\ : STD_LOGIC;
  signal \g17_b6__1_n_0\ : STD_LOGIC;
  signal g17_b6_n_0 : STD_LOGIC;
  signal g19_b0_n_0 : STD_LOGIC;
  signal g19_b10_n_0 : STD_LOGIC;
  signal g19_b18_n_0 : STD_LOGIC;
  signal g19_b19_n_0 : STD_LOGIC;
  signal g19_b1_n_0 : STD_LOGIC;
  signal g19_b20_n_0 : STD_LOGIC;
  signal g19_b22_n_0 : STD_LOGIC;
  signal g19_b23_n_0 : STD_LOGIC;
  signal g19_b25_n_0 : STD_LOGIC;
  signal g19_b26_n_0 : STD_LOGIC;
  signal g19_b27_n_0 : STD_LOGIC;
  signal g19_b28_n_0 : STD_LOGIC;
  signal g19_b29_n_0 : STD_LOGIC;
  signal g19_b2_n_0 : STD_LOGIC;
  signal g19_b30_n_0 : STD_LOGIC;
  signal g19_b31_n_0 : STD_LOGIC;
  signal g19_b3_n_0 : STD_LOGIC;
  signal g19_b5_n_0 : STD_LOGIC;
  signal g19_b6_n_0 : STD_LOGIC;
  signal g19_b7_n_0 : STD_LOGIC;
  signal g1_b0_n_0 : STD_LOGIC;
  signal g1_b10_n_0 : STD_LOGIC;
  signal g1_b11_n_0 : STD_LOGIC;
  signal g1_b12_n_0 : STD_LOGIC;
  signal g1_b13_n_0 : STD_LOGIC;
  signal g1_b14_n_0 : STD_LOGIC;
  signal g1_b15_n_0 : STD_LOGIC;
  signal g1_b16_n_0 : STD_LOGIC;
  signal g1_b17_n_0 : STD_LOGIC;
  signal g1_b18_n_0 : STD_LOGIC;
  signal g1_b19_n_0 : STD_LOGIC;
  signal g1_b1_n_0 : STD_LOGIC;
  signal g1_b20_n_0 : STD_LOGIC;
  signal g1_b21_n_0 : STD_LOGIC;
  signal g1_b22_n_0 : STD_LOGIC;
  signal g1_b26_n_0 : STD_LOGIC;
  signal g1_b27_n_0 : STD_LOGIC;
  signal g1_b28_n_0 : STD_LOGIC;
  signal g1_b29_n_0 : STD_LOGIC;
  signal g1_b2_n_0 : STD_LOGIC;
  signal g1_b31_n_0 : STD_LOGIC;
  signal g1_b3_n_0 : STD_LOGIC;
  signal g1_b4_n_0 : STD_LOGIC;
  signal g1_b5_n_0 : STD_LOGIC;
  signal g1_b6_n_0 : STD_LOGIC;
  signal g1_b8_n_0 : STD_LOGIC;
  signal g1_b9_n_0 : STD_LOGIC;
  signal g20_b0_n_0 : STD_LOGIC;
  signal g20_b10_n_0 : STD_LOGIC;
  signal g20_b14_n_0 : STD_LOGIC;
  signal g20_b15_n_0 : STD_LOGIC;
  signal g20_b16_n_0 : STD_LOGIC;
  signal g20_b17_n_0 : STD_LOGIC;
  signal g20_b18_n_0 : STD_LOGIC;
  signal g20_b19_n_0 : STD_LOGIC;
  signal g20_b1_n_0 : STD_LOGIC;
  signal g20_b20_n_0 : STD_LOGIC;
  signal g20_b21_n_0 : STD_LOGIC;
  signal g20_b22_n_0 : STD_LOGIC;
  signal g20_b23_n_0 : STD_LOGIC;
  signal g20_b24_n_0 : STD_LOGIC;
  signal g20_b25_n_0 : STD_LOGIC;
  signal g20_b26_n_0 : STD_LOGIC;
  signal g20_b27_n_0 : STD_LOGIC;
  signal g20_b28_n_0 : STD_LOGIC;
  signal g20_b29_n_0 : STD_LOGIC;
  signal g20_b2_n_0 : STD_LOGIC;
  signal g20_b30_n_0 : STD_LOGIC;
  signal g20_b31_n_0 : STD_LOGIC;
  signal g20_b3_n_0 : STD_LOGIC;
  signal g20_b4_n_0 : STD_LOGIC;
  signal g20_b5_n_0 : STD_LOGIC;
  signal g2_b0_n_0 : STD_LOGIC;
  signal g2_b10_n_0 : STD_LOGIC;
  signal g2_b11_n_0 : STD_LOGIC;
  signal g2_b13_n_0 : STD_LOGIC;
  signal g2_b14_n_0 : STD_LOGIC;
  signal g2_b15_n_0 : STD_LOGIC;
  signal g2_b16_n_0 : STD_LOGIC;
  signal g2_b17_n_0 : STD_LOGIC;
  signal g2_b18_n_0 : STD_LOGIC;
  signal g2_b1_n_0 : STD_LOGIC;
  signal g2_b20_n_0 : STD_LOGIC;
  signal g2_b21_n_0 : STD_LOGIC;
  signal g2_b22_n_0 : STD_LOGIC;
  signal g2_b23_n_0 : STD_LOGIC;
  signal g2_b26_n_0 : STD_LOGIC;
  signal g2_b27_n_0 : STD_LOGIC;
  signal g2_b28_n_0 : STD_LOGIC;
  signal g2_b29_n_0 : STD_LOGIC;
  signal g2_b2_n_0 : STD_LOGIC;
  signal g2_b31_n_0 : STD_LOGIC;
  signal g2_b3_n_0 : STD_LOGIC;
  signal g2_b4_n_0 : STD_LOGIC;
  signal g2_b5_n_0 : STD_LOGIC;
  signal g2_b9_n_0 : STD_LOGIC;
  signal g3_b0_n_0 : STD_LOGIC;
  signal g3_b10_n_0 : STD_LOGIC;
  signal g3_b11_n_0 : STD_LOGIC;
  signal g3_b14_n_0 : STD_LOGIC;
  signal g3_b15_n_0 : STD_LOGIC;
  signal g3_b16_n_0 : STD_LOGIC;
  signal g3_b17_n_0 : STD_LOGIC;
  signal g3_b18_n_0 : STD_LOGIC;
  signal g3_b1_n_0 : STD_LOGIC;
  signal g3_b20_n_0 : STD_LOGIC;
  signal g3_b21_n_0 : STD_LOGIC;
  signal g3_b22_n_0 : STD_LOGIC;
  signal g3_b23_n_0 : STD_LOGIC;
  signal g3_b26_n_0 : STD_LOGIC;
  signal g3_b27_n_0 : STD_LOGIC;
  signal g3_b28_n_0 : STD_LOGIC;
  signal g3_b29_n_0 : STD_LOGIC;
  signal g3_b2_n_0 : STD_LOGIC;
  signal g3_b3_n_0 : STD_LOGIC;
  signal g3_b4_n_0 : STD_LOGIC;
  signal g3_b5_n_0 : STD_LOGIC;
  signal g3_b9_n_0 : STD_LOGIC;
  signal g4_b0_n_0 : STD_LOGIC;
  signal g4_b10_n_0 : STD_LOGIC;
  signal g4_b11_n_0 : STD_LOGIC;
  signal g4_b14_n_0 : STD_LOGIC;
  signal g4_b15_n_0 : STD_LOGIC;
  signal g4_b16_n_0 : STD_LOGIC;
  signal g4_b17_n_0 : STD_LOGIC;
  signal g4_b18_n_0 : STD_LOGIC;
  signal g4_b1_n_0 : STD_LOGIC;
  signal g4_b20_n_0 : STD_LOGIC;
  signal g4_b21_n_0 : STD_LOGIC;
  signal g4_b22_n_0 : STD_LOGIC;
  signal g4_b23_n_0 : STD_LOGIC;
  signal g4_b26_n_0 : STD_LOGIC;
  signal g4_b27_n_0 : STD_LOGIC;
  signal g4_b28_n_0 : STD_LOGIC;
  signal g4_b29_n_0 : STD_LOGIC;
  signal g4_b2_n_0 : STD_LOGIC;
  signal g4_b3_n_0 : STD_LOGIC;
  signal g4_b4_n_0 : STD_LOGIC;
  signal g4_b5_n_0 : STD_LOGIC;
  signal g4_b6_n_0 : STD_LOGIC;
  signal g4_b7_n_0 : STD_LOGIC;
  signal g4_b9_n_0 : STD_LOGIC;
  signal g5_b0_n_0 : STD_LOGIC;
  signal g5_b10_n_0 : STD_LOGIC;
  signal g5_b12_n_0 : STD_LOGIC;
  signal g5_b13_n_0 : STD_LOGIC;
  signal g5_b14_n_0 : STD_LOGIC;
  signal g5_b15_n_0 : STD_LOGIC;
  signal g5_b16_n_0 : STD_LOGIC;
  signal g5_b17_n_0 : STD_LOGIC;
  signal g5_b18_n_0 : STD_LOGIC;
  signal g5_b1_n_0 : STD_LOGIC;
  signal g5_b20_n_0 : STD_LOGIC;
  signal g5_b21_n_0 : STD_LOGIC;
  signal g5_b22_n_0 : STD_LOGIC;
  signal g5_b23_n_0 : STD_LOGIC;
  signal g5_b26_n_0 : STD_LOGIC;
  signal g5_b27_n_0 : STD_LOGIC;
  signal g5_b28_n_0 : STD_LOGIC;
  signal g5_b29_n_0 : STD_LOGIC;
  signal g5_b2_n_0 : STD_LOGIC;
  signal g5_b3_n_0 : STD_LOGIC;
  signal g5_b4_n_0 : STD_LOGIC;
  signal g5_b5_n_0 : STD_LOGIC;
  signal g5_b6_n_0 : STD_LOGIC;
  signal g5_b9_n_0 : STD_LOGIC;
  signal g6_b0_n_0 : STD_LOGIC;
  signal g6_b10_n_0 : STD_LOGIC;
  signal g6_b11_n_0 : STD_LOGIC;
  signal g6_b14_n_0 : STD_LOGIC;
  signal g6_b15_n_0 : STD_LOGIC;
  signal g6_b16_n_0 : STD_LOGIC;
  signal g6_b17_n_0 : STD_LOGIC;
  signal g6_b18_n_0 : STD_LOGIC;
  signal g6_b1_n_0 : STD_LOGIC;
  signal g6_b20_n_0 : STD_LOGIC;
  signal g6_b21_n_0 : STD_LOGIC;
  signal g6_b22_n_0 : STD_LOGIC;
  signal g6_b26_n_0 : STD_LOGIC;
  signal g6_b27_n_0 : STD_LOGIC;
  signal g6_b28_n_0 : STD_LOGIC;
  signal g6_b29_n_0 : STD_LOGIC;
  signal g6_b2_n_0 : STD_LOGIC;
  signal g6_b3_n_0 : STD_LOGIC;
  signal g6_b4_n_0 : STD_LOGIC;
  signal g6_b7_n_0 : STD_LOGIC;
  signal g6_b9_n_0 : STD_LOGIC;
  signal g7_b0_n_0 : STD_LOGIC;
  signal g7_b10_n_0 : STD_LOGIC;
  signal g7_b11_n_0 : STD_LOGIC;
  signal g7_b14_n_0 : STD_LOGIC;
  signal g7_b15_n_0 : STD_LOGIC;
  signal g7_b17_n_0 : STD_LOGIC;
  signal g7_b18_n_0 : STD_LOGIC;
  signal g7_b1_n_0 : STD_LOGIC;
  signal g7_b20_n_0 : STD_LOGIC;
  signal g7_b21_n_0 : STD_LOGIC;
  signal g7_b22_n_0 : STD_LOGIC;
  signal g7_b23_n_0 : STD_LOGIC;
  signal g7_b26_n_0 : STD_LOGIC;
  signal g7_b27_n_0 : STD_LOGIC;
  signal g7_b28_n_0 : STD_LOGIC;
  signal g7_b29_n_0 : STD_LOGIC;
  signal g7_b2_n_0 : STD_LOGIC;
  signal g7_b3_n_0 : STD_LOGIC;
  signal g7_b4_n_0 : STD_LOGIC;
  signal g7_b6_n_0 : STD_LOGIC;
  signal g7_b7_n_0 : STD_LOGIC;
  signal g7_b9_n_0 : STD_LOGIC;
  signal g8_b0_n_0 : STD_LOGIC;
  signal g8_b11_n_0 : STD_LOGIC;
  signal g8_b14_n_0 : STD_LOGIC;
  signal g8_b15_n_0 : STD_LOGIC;
  signal g8_b16_n_0 : STD_LOGIC;
  signal g8_b17_n_0 : STD_LOGIC;
  signal g8_b18_n_0 : STD_LOGIC;
  signal g8_b1_n_0 : STD_LOGIC;
  signal g8_b21_n_0 : STD_LOGIC;
  signal g8_b22_n_0 : STD_LOGIC;
  signal g8_b23_n_0 : STD_LOGIC;
  signal g8_b27_n_0 : STD_LOGIC;
  signal g8_b28_n_0 : STD_LOGIC;
  signal g8_b29_n_0 : STD_LOGIC;
  signal g8_b2_n_0 : STD_LOGIC;
  signal g8_b3_n_0 : STD_LOGIC;
  signal g8_b4_n_0 : STD_LOGIC;
  signal g8_b6_n_0 : STD_LOGIC;
  signal g8_b7_n_0 : STD_LOGIC;
  signal g8_b8_n_0 : STD_LOGIC;
  signal g8_b9_n_0 : STD_LOGIC;
  signal g9_b0_n_0 : STD_LOGIC;
  signal g9_b10_n_0 : STD_LOGIC;
  signal g9_b11_n_0 : STD_LOGIC;
  signal g9_b12_n_0 : STD_LOGIC;
  signal g9_b14_n_0 : STD_LOGIC;
  signal g9_b15_n_0 : STD_LOGIC;
  signal g9_b16_n_0 : STD_LOGIC;
  signal g9_b17_n_0 : STD_LOGIC;
  signal g9_b18_n_0 : STD_LOGIC;
  signal g9_b1_n_0 : STD_LOGIC;
  signal g9_b20_n_0 : STD_LOGIC;
  signal g9_b21_n_0 : STD_LOGIC;
  signal g9_b22_n_0 : STD_LOGIC;
  signal g9_b23_n_0 : STD_LOGIC;
  signal g9_b26_n_0 : STD_LOGIC;
  signal g9_b27_n_0 : STD_LOGIC;
  signal g9_b28_n_0 : STD_LOGIC;
  signal g9_b29_n_0 : STD_LOGIC;
  signal g9_b2_n_0 : STD_LOGIC;
  signal g9_b30_n_0 : STD_LOGIC;
  signal g9_b3_n_0 : STD_LOGIC;
  signal g9_b4_n_0 : STD_LOGIC;
  signal g9_b5_n_0 : STD_LOGIC;
  signal g9_b6_n_0 : STD_LOGIC;
  signal g9_b7_n_0 : STD_LOGIC;
  signal g9_b9_n_0 : STD_LOGIC;
  signal \spo[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of g0_b12 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of g0_b9 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of g11_b25 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of g12_b31 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of g13_b0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of g13_b1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of g13_b10 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of g13_b2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of g13_b20 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of g13_b27 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \g13_b29__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \g13_b29__1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \g13_b29__5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \g13_b29__6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of g19_b18 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of g19_b19 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of g1_b15 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of g1_b19 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \spo[15]_INST_0_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spo[21]_INST_0_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spo[21]_INST_0_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spo[23]_INST_0_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spo[2]_INST_0_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spo[8]_INST_0_i_1\ : label is "soft_lutpair6";
begin
  dpo(31) <= \<const0>\;
  dpo(30) <= \<const0>\;
  dpo(29) <= \<const0>\;
  dpo(28) <= \<const0>\;
  dpo(27) <= \<const0>\;
  dpo(26) <= \<const0>\;
  dpo(25) <= \<const0>\;
  dpo(24) <= \<const0>\;
  dpo(23) <= \<const0>\;
  dpo(22) <= \<const0>\;
  dpo(21) <= \<const0>\;
  dpo(20) <= \<const0>\;
  dpo(19) <= \<const0>\;
  dpo(18) <= \<const0>\;
  dpo(17) <= \<const0>\;
  dpo(16) <= \<const0>\;
  dpo(15) <= \<const0>\;
  dpo(14) <= \<const0>\;
  dpo(13) <= \<const0>\;
  dpo(12) <= \<const0>\;
  dpo(11) <= \<const0>\;
  dpo(10) <= \<const0>\;
  dpo(9) <= \<const0>\;
  dpo(8) <= \<const0>\;
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(31) <= \<const0>\;
  qdpo(30) <= \<const0>\;
  qdpo(29) <= \<const0>\;
  qdpo(28) <= \<const0>\;
  qdpo(27) <= \<const0>\;
  qdpo(26) <= \<const0>\;
  qdpo(25) <= \<const0>\;
  qdpo(24) <= \<const0>\;
  qdpo(23) <= \<const0>\;
  qdpo(22) <= \<const0>\;
  qdpo(21) <= \<const0>\;
  qdpo(20) <= \<const0>\;
  qdpo(19) <= \<const0>\;
  qdpo(18) <= \<const0>\;
  qdpo(17) <= \<const0>\;
  qdpo(16) <= \<const0>\;
  qdpo(15) <= \<const0>\;
  qdpo(14) <= \<const0>\;
  qdpo(13) <= \<const0>\;
  qdpo(12) <= \<const0>\;
  qdpo(11) <= \<const0>\;
  qdpo(10) <= \<const0>\;
  qdpo(9) <= \<const0>\;
  qdpo(8) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  qspo(31) <= \<const0>\;
  qspo(30) <= \<const0>\;
  qspo(29) <= \<const0>\;
  qspo(28) <= \<const0>\;
  qspo(27) <= \<const0>\;
  qspo(26) <= \<const0>\;
  qspo(25) <= \<const0>\;
  qspo(24) <= \<const0>\;
  qspo(23) <= \<const0>\;
  qspo(22) <= \<const0>\;
  qspo(21) <= \<const0>\;
  qspo(20) <= \<const0>\;
  qspo(19) <= \<const0>\;
  qspo(18) <= \<const0>\;
  qspo(17) <= \<const0>\;
  qspo(16) <= \<const0>\;
  qspo(15) <= \<const0>\;
  qspo(14) <= \<const0>\;
  qspo(13) <= \<const0>\;
  qspo(12) <= \<const0>\;
  qspo(11) <= \<const0>\;
  qspo(10) <= \<const0>\;
  qspo(9) <= \<const0>\;
  qspo(8) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8E8E8E8E8E8E8E4"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b0_n_0
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE88EE88EE88EE04"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b1_n_0
    );
g0_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b10_n_0
    );
g0_b12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(3),
      I3 => a(4),
      I4 => a(5),
      O => g0_b12_n_0
    );
g0_b16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2E2E2E2E3A0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b16_n_0
    );
g0_b17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => a(1),
      I1 => a(3),
      O => g0_b17_n_0
    );
g0_b18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC0000CCCC0060"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b18_n_0
    );
g0_b19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC000001E0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b19_n_0
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6E6E08086E6E0901"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b2_n_0
    );
g0_b20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000001E5"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b20_n_0
    );
g0_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888900"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b21_n_0
    );
g0_b25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b25_n_0
    );
g0_b27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000009"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(3),
      I3 => a(4),
      I4 => a(5),
      O => g0_b27_n_0
    );
g0_b28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888889A0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b28_n_0
    );
g0_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66666666666667E0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b29_n_0
    );
g0_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE66EE6688008804"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b3_n_0
    );
g0_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800008888000004"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b4_n_0
    );
g0_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800000000888804"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b5_n_0
    );
g0_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800000000000004"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b7_n_0
    );
g0_b8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888880"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(3),
      I3 => a(4),
      I4 => a(5),
      O => g0_b8_n_0
    );
g0_b9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(3),
      I3 => a(4),
      I4 => a(5),
      O => g0_b9_n_0
    );
g10_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D3EACAA10238A0BC"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b0_n_0
    );
g10_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B9E9E4849098B97D"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b1_n_0
    );
g10_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"31E0C6000002643C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b10_n_0
    );
g10_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35E0D6020040747C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b11_n_0
    );
g10_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"39E0E6040080347C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b12_n_0
    );
g10_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"31E0C6000000643C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b15_n_0
    );
g10_b16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B062C2284508040C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b16_n_0
    );
g10_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B382CC2985301870"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b17_n_0
    );
g10_b18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"400900901200E181"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b18_n_0
    );
g10_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B1E2C280841A283C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b2_n_0
    );
g10_b20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b20_n_0
    );
g10_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A242882104209149"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b21_n_0
    );
g10_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2108808010008121"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b22_n_0
    );
g10_b23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b23_n_0
    );
g10_b26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B1EAC0A01402E13D"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b26_n_0
    );
g10_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10A0400000022014"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b27_n_0
    );
g10_b28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B1EAC0A01400F17D"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b28_n_0
    );
g10_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"71E1C618C3187CFC"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b29_n_0
    );
g10_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B3EA4E21822AAC3D"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b3_n_0
    );
g10_b30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001040"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b30_n_0
    );
g10_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFE1FEA700E2613D"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b4_n_0
    );
g10_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B1E0C6001600E13D"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b5_n_0
    );
g10_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B1E0C60002006C3C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b6_n_0
    );
g10_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B1E0C6000000643C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b7_n_0
    );
g10_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B1E0C6000002243C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b8_n_0
    );
g10_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"31EAC6A01400E53D"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b9_n_0
    );
g11_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5080902E4422B22"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b0_n_0
    );
g11_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"29408800A1400A90"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b1_n_0
    );
g11_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2100210064C08608"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b10_n_0
    );
g11_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008010064C00648"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b11_n_0
    );
g11_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008010264C20288"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b12_n_0
    );
g11_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008010064C00608"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b15_n_0
    );
g11_b16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0840031E1C3E0908"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b16_n_0
    );
g11_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04200C66E1C60930"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b17_n_0
    );
g11_b18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000002602"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b18_n_0
    );
g11_b19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0420000000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b19_n_0
    );
g11_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"21002844A0408312"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b2_n_0
    );
g11_b20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A100A00000008000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b20_n_0
    );
g11_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0E7499340820"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b21_n_0
    );
g11_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C4A063458B42002"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b22_n_0
    );
g11_b23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A000000000400"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b23_n_0
    );
g11_b24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C4A000000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b24_n_0
    );
g11_b25: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(3),
      I3 => a(4),
      I4 => a(5),
      O => g11_b25_n_0
    );
g11_b26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0840AF46FDC6AE02"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b26_n_0
    );
g11_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2100A00220428200"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b27_n_0
    );
g11_b28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000D66E5C62E02"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b28_n_0
    );
g11_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8420031E6CDE0718"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b29_n_0
    );
g11_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"210A28002140833A"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b3_n_0
    );
g11_b31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000063018300000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b31_n_0
    );
g11_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A90864C8AEE2"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b4_n_0
    );
g11_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008148E5C82E02"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b5_n_0
    );
g11_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"21008948E5C82F1A"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b6_n_0
    );
g11_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"21008948E5C82E0A"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b7_n_0
    );
g11_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002940E5C0AA0A"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b8_n_0
    );
g11_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000810464C40608"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b9_n_0
    );
g12_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444CCC1035020C02"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b0_n_0
    );
g12_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0451C01031120D01"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b1_n_0
    );
g12_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444CC13130420C08"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b10_n_0
    );
g12_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C030300A2C80"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b11_n_0
    );
g12_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000CC03030020C01"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b12_n_0
    );
g12_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C03032020C00"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b13_n_0
    );
g12_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000CC03032020C01"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b14_n_0
    );
g12_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C03030020C00"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b15_n_0
    );
g12_b16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0018C47033000002"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b16_n_0
    );
g12_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"331C184040030C20"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b17_n_0
    );
g12_b18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3301000000145141"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b18_n_0
    );
g12_b19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3301004040000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b19_n_0
    );
g12_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004DD15535524C0A"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b2_n_0
    );
g12_b20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7740010100400009"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b20_n_0
    );
g12_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2201906060104100"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b21_n_0
    );
g12_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00100000000A2882"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b22_n_0
    );
g12_b23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2200000002000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b23_n_0
    );
g12_b24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2200000000000002"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b24_n_0
    );
g12_b26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2201C17170534D0A"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b26_n_0
    );
g12_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6640411110410408"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b27_n_0
    );
g12_b28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011C070701B6D80"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b28_n_0
    );
g12_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"330CCC30310F3CE0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b29_n_0
    );
g12_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4041C11575520D0A"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b3_n_0
    );
g12_b30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002082080"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b30_n_0
    );
g12_b31: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(3),
      I3 => a(4),
      I4 => a(5),
      O => g12_b31_n_0
    );
g12_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"440DD13130560C08"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b4_n_0
    );
g12_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4441D030301A2CC1"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b5_n_0
    );
g12_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"450CC07070024D02"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b6_n_0
    );
g12_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4441C07070124D02"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b7_n_0
    );
g12_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000DC17170524D0A"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b8_n_0
    );
g13_b0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      O => g13_b0_n_0
    );
g13_b1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0110"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      O => g13_b1_n_0
    );
g13_b10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      O => g13_b10_n_0
    );
g13_b2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01111000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      O => g13_b2_n_0
    );
g13_b20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      O => g13_b20_n_0
    );
g13_b27: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      O => g13_b27_n_0
    );
g13_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0005050505C5C5"
    )
        port map (
      I0 => a(1),
      I1 => g20_b29_n_0,
      I2 => a(8),
      I3 => g19_b29_n_0,
      I4 => a(6),
      I5 => a(7),
      O => g13_b29_n_0
    );
\g13_b29__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5754"
    )
        port map (
      I0 => a(1),
      I1 => a(7),
      I2 => a(6),
      I3 => g12_b29_n_0,
      O => \g13_b29__0_n_0\
    );
\g13_b29__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C555"
    )
        port map (
      I0 => a(1),
      I1 => g19_b19_n_0,
      I2 => a(6),
      I3 => a(7),
      O => \g13_b29__1_n_0\
    );
\g13_b29__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0005050505C5C5"
    )
        port map (
      I0 => a(1),
      I1 => g20_b19_n_0,
      I2 => a(8),
      I3 => g19_b19_n_0,
      I4 => a(6),
      I5 => a(7),
      O => \g13_b29__2_n_0\
    );
\g13_b29__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F50505050C050C0"
    )
        port map (
      I0 => a(1),
      I1 => g12_b19_n_0,
      I2 => a(8),
      I3 => a(7),
      I4 => g11_b19_n_0,
      I5 => a(6),
      O => \g13_b29__3_n_0\
    );
\g13_b29__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0005050505C5C5"
    )
        port map (
      I0 => a(1),
      I1 => g20_b18_n_0,
      I2 => a(8),
      I3 => g19_b18_n_0,
      I4 => a(6),
      I5 => a(7),
      O => \g13_b29__4_n_0\
    );
\g13_b29__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5754"
    )
        port map (
      I0 => a(1),
      I1 => a(7),
      I2 => a(6),
      I3 => g12_b18_n_0,
      O => \g13_b29__5_n_0\
    );
\g13_b29__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5754"
    )
        port map (
      I0 => a(1),
      I1 => a(7),
      I2 => a(6),
      I3 => g12_b17_n_0,
      O => \g13_b29__6_n_0\
    );
g13_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4555555554444444"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g13_b3_n_0
    );
g13_b31: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      O => g13_b31_n_0
    );
g14_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4555555555555555"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g14_b4_n_0
    );
g16_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5545454545454545"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g16_b0_n_0
    );
g16_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110011001100110"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g16_b1_n_0
    );
g16_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555554444444"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g16_b3_n_0
    );
g16_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5444444444444444"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g16_b6_n_0
    );
g17_b6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C55FC550"
    )
        port map (
      I0 => a(0),
      I1 => g19_b6_n_0,
      I2 => a(7),
      I3 => a(6),
      I4 => g16_b6_n_0,
      O => g17_b6_n_0
    );
\g17_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFCC00F055F055"
    )
        port map (
      I0 => a(0),
      I1 => g19_b5_n_0,
      I2 => g16_b6_n_0,
      I3 => a(7),
      I4 => g13_b10_n_0,
      I5 => a(6),
      O => \g17_b6__0_n_0\
    );
\g17_b6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F50CFCF5F50C0C0"
    )
        port map (
      I0 => a(0),
      I1 => g16_b6_n_0,
      I2 => a(7),
      I3 => g13_b10_n_0,
      I4 => a(6),
      I5 => g12_b5_n_0,
      O => \g17_b6__1_n_0\
    );
g19_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2204544545454545"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b0_n_0
    );
g19_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2011001001100110"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b1_n_0
    );
g19_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0214444444444444"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b10_n_0
    );
g19_b18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01555555"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(3),
      I3 => a(4),
      I4 => a(5),
      O => g19_b18_n_0
    );
g19_b19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C1555555"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(3),
      I3 => a(4),
      I4 => a(5),
      O => g19_b19_n_0
    );
g19_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A011110001111000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b2_n_0
    );
g19_b20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F217777777777777"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b20_n_0
    );
g19_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A080000000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b22_n_0
    );
g19_b23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0082222222222222"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b23_n_0
    );
g19_b25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A082222222222222"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b25_n_0
    );
g19_b26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0012222222222222"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b26_n_0
    );
g19_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0216666666666666"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b27_n_0
    );
g19_b28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(3),
      I3 => a(4),
      I4 => a(5),
      O => g19_b28_n_0
    );
g19_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6003333333333333"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b29_n_0
    );
g19_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A285555554444444"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b3_n_0
    );
g19_b30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b30_n_0
    );
g19_b31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b31_n_0
    );
g19_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6215555555555555"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b5_n_0
    );
g19_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2215555555555555"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b6_n_0
    );
g19_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2214444444444444"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b7_n_0
    );
g1_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A034E8E8E8E8E8E8"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b0_n_0
    );
g1_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0131E8E8EE88EE88"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b1_n_0
    );
g1_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8030FA0000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b10_n_0
    );
g1_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030F80000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b11_n_0
    );
g1_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8034E80000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b12_n_0
    );
g1_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030E80000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b13_n_0
    );
g1_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8030E80000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b14_n_0
    );
g1_b15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(3),
      I3 => a(4),
      I4 => a(5),
      O => g1_b15_n_0
    );
g1_b16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"318C38E2E2E2E2E2"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b16_n_0
    );
g1_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BDF1C0C0CC00CC00"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b17_n_0
    );
g1_b18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008AA00"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(3),
      I3 => a(4),
      I4 => a(5),
      O => g1_b18_n_0
    );
g1_b19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => a(1),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      O => g1_b19_n_0
    );
g1_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A031EA686E6E0808"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b2_n_0
    );
g1_b20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002CCCCCCCCCC"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b20_n_0
    );
g1_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"18C9208888888888"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b21_n_0
    );
g1_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2120800000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b22_n_0
    );
g1_b26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B9FDC28888888888"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b26_n_0
    );
g1_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"98D4420000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b27_n_0
    );
g1_b28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A13DC08888888888"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b28_n_0
    );
g1_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C7CE86666666666"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b29_n_0
    );
g1_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0139EA6688008800"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b3_n_0
    );
g1_b31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"18C0000000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b31_n_0
    );
g1_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8030EAEEEE6666EE"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b4_n_0
    );
g1_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030E80000888888"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b5_n_0
    );
g1_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A131E88888888888"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b6_n_0
    );
g1_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8030EA0000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b8_n_0
    );
g1_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2131E88888888888"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b9_n_0
    );
g20_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000400C2320"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b0_n_0
    );
g20_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001CA720"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b1_n_0
    );
g20_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001CE700"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b10_n_0
    );
g20_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000028C6300"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b14_n_0
    );
g20_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000C6300"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b15_n_0
    );
g20_b16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080006024"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b16_n_0
    );
g20_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003806336"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b17_n_0
    );
g20_b18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000600C0000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b18_n_0
    );
g20_b19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E38C6336"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b19_n_0
    );
g20_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000811CA716"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b2_n_0
    );
g20_b20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E3908436"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b20_n_0
    );
g20_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001A0004000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b21_n_0
    );
g20_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000101004224"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b22_n_0
    );
g20_b23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000142080000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b23_n_0
    );
g20_b24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001E1084224"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b24_n_0
    );
g20_b25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001E5000024"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b25_n_0
    );
g20_b26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000200C6300"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b26_n_0
    );
g20_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002014A500"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b27_n_0
    );
g20_b28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000C6324"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b28_n_0
    );
g20_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E10C6312"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b29_n_0
    );
g20_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001040C2320"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b3_n_0
    );
g20_b30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000006800000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b30_n_0
    );
g20_b31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b31_n_0
    );
g20_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000041CE710"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b4_n_0
    );
g20_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000C6312"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b5_n_0
    );
g2_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CF8B72DC0BC209"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b0_n_0
    );
g2_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60979060980BC068"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b1_n_0
    );
g2_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"620780601903C801"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b10_n_0
    );
g2_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"604F89625827C060"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b11_n_0
    );
g2_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"600780601803C060"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b13_n_0
    );
g2_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"600780601803C001"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b14_n_0
    );
g2_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6005C0C03003A060"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b15_n_0
    );
g2_b16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"900981605804C30C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b16_n_0
    );
g2_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1849C9725C24E3EF"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b17_n_0
    );
g2_b18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0961284A04B0000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b18_n_0
    );
g2_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"620792609943C809"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b2_n_0
    );
g2_b20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000001000800"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b20_n_0
    );
g2_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D11A4690688186"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b21_n_0
    );
g2_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0049094250248249"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b22_n_0
    );
g2_b23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004000000020000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b23_n_0
    );
g2_b26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6297D2E4B94BEBEF"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b26_n_0
    );
g2_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2202C0A0290169A6"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b27_n_0
    );
g2_b28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6097D2E4B84BE269"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b28_n_0
    );
g2_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F807C0F03C03E0E3"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b29_n_0
    );
g2_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"629792609903CA68"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b3_n_0
    );
g2_b31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000186"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b31_n_0
    );
g2_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"62078064194BCA09"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b4_n_0
    );
g2_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60DF9B66D86FC268"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b5_n_0
    );
g2_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60979264984BC268"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b9_n_0
    );
g3_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"801FA0C033E023C2"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b0_n_0
    );
g3_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C018FD312C193D9"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b1_n_0
    );
g3_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"011F80C000C403C0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b10_n_0
    );
g3_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EC219FCB12C093C9"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b11_n_0
    );
g3_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001F80C000C003C0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b14_n_0
    );
g3_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C018FC300C003C0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b15_n_0
    );
g3_b16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9026130B23211B11"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b16_n_0
    );
g3_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9C2793CB923093C9"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b17_n_0
    );
g3_b18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60582C1425C12C12"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b18_n_0
    );
g3_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"813FB0C824C403D2"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b2_n_0
    );
g3_b20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000040000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b20_n_0
    );
g3_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004422123401A21A"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b21_n_0
    );
g3_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8825128A12009289"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b22_n_0
    );
g3_b23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4010080000800000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b23_n_0
    );
g3_b26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6D5FAFD324C523D2"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b26_n_0
    );
g3_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"250A854100440140"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b27_n_0
    );
g3_b28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C5FAFD324C123D2"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b28_n_0
    );
g3_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7C1F8FC781F00FC0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b29_n_0
    );
g3_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6D41AFC300C523C0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b3_n_0
    );
g3_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"015FA0C000C403C0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b4_n_0
    );
g3_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EC219FDB36C1B3DB"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b5_n_0
    );
g3_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C41AFD324C123D2"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b9_n_0
    );
g4_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2F26000F1E0C3FC"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b0_n_0
    );
g4_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"32338182F39880CD"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b1_n_0
    );
g4_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30F06400F1E200FC"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b10_n_0
    );
g4_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"32338082F39841CC"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b11_n_0
    );
g4_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30F06000F1E000FC"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b14_n_0
    );
g4_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30318000F19800CC"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b15_n_0
    );
g4_b16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82C260A2C2605130"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b16_n_0
    );
g4_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"32F270B2F278593C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b17_n_0
    );
g4_b18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"450581450580A2C1"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b18_n_0
    );
g4_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36F26582F7E243FC"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b2_n_0
    );
g4_b20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000020000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b20_n_0
    );
g4_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0484410484408221"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b21_n_0
    );
g4_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A24082A2504128"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b22_n_0
    );
g4_b23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000001000080"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b23_n_0
    );
g4_b26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"34F5E504F5FA82FD"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b26_n_0
    );
g4_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1050A40050AA0054"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b27_n_0
    );
g4_b28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"34F5E104F5F882FD"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b28_n_0
    );
g4_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1F1F071F1F838FC"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b29_n_0
    );
g4_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30358500F19A82CC"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b3_n_0
    );
g4_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"34F46500F1E200FD"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b4_n_0
    );
g4_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36378182F39841CC"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b5_n_0
    );
g4_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"34F46100F1E000FC"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b6_n_0
    );
g4_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30318004F59882CD"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b7_n_0
    );
g4_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"34358104F59882CD"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b9_n_0
    );
g5_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80033F20203728DC"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b0_n_0
    );
g5_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BD01283D0D9F08FD"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b1_n_0
    );
g5_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00093F20001F0A7C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b10_n_0
    );
g5_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00213F20001A0868"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b12_n_0
    );
g5_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C01283C0D9A0868"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b13_n_0
    );
g5_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00013F20001A0868"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b14_n_0
    );
g5_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C01283C0D9F087C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b15_n_0
    );
g5_b16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"408170219C102040"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b16_n_0
    );
g5_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C00030C0183080C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b17_n_0
    );
g5_b18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B1425C512E2C50B1"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b18_n_0
    );
g5_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800B7F20003F0A7C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b2_n_0
    );
g5_b20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000200"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b20_n_0
    );
g5_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8102404128204081"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b21_n_0
    );
g5_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4881222891122048"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b22_n_0
    );
g5_b23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000080008080020"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b23_n_0
    );
g5_b26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BD8B5F5DADBF62BD"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b26_n_0
    );
g5_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5408050404850214"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b27_n_0
    );
g5_b28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD837F7DBDAF40BD"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b28_n_0
    );
g5_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7CC13F3C9F9F387C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b29_n_0
    );
g5_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC09287D2DBF0A7C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b3_n_0
    );
g5_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80093F20001F4AFD"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b4_n_0
    );
g5_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3D23687D2DBF48FD"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b5_n_0
    );
g5_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"81037F61203F48FD"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b6_n_0
    );
g5_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BD03687D2DBF48FD"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b9_n_0
    );
g6_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BECD2F0870AA18E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b0_n_0
    );
g6_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"196D92D0DB2C929E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b1_n_0
    );
g6_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"406010120300808E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b10_n_0
    );
g6_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"096492504B24928E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b11_n_0
    );
g6_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002000100100008E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b14_n_0
    );
g6_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004010000200800E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b15_n_0
    );
g6_b16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0140A0500A050288"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b16_n_0
    );
g6_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0964B2584B2592C2"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b17_n_0
    );
g6_b18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"028840A0840A0514"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b18_n_0
    );
g6_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"526910920340A49E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b2_n_0
    );
g6_b20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000200000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b20_n_0
    );
g6_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1A0D0680D0683410"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b21_n_0
    );
g6_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0904824048241208"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b22_n_0
    );
g6_b26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"526914929348A494"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b26_n_0
    );
g6_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"406010120300808C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b27_n_0
    );
g6_b28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"126914909348A49C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b28_n_0
    );
g6_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E07038070381CE"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b29_n_0
    );
g6_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"49649652DB6CB69E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b3_n_0
    );
g6_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"526914929348A49E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b4_n_0
    );
g6_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"006010100300808E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b7_n_0
    );
g6_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"126914909348A49E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b9_n_0
    );
g7_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C70CA00BA12E0B2E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b0_n_0
    );
g7_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF1D9019812C092C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b1_n_0
    );
g7_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C71C004981240124"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b10_n_0
    );
g7_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF3C920981240124"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b11_n_0
    );
g7_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C71C000000000100"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b14_n_0
    );
g7_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C51C000000000100"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b15_n_0
    );
g7_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4924930081010101"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b17_n_0
    );
g7_b18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96580000004A0A4A"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b18_n_0
    );
g7_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D71C004985644164"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b2_n_0
    );
g7_b20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b20_n_0
    );
g7_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1041241224484848"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b21_n_0
    );
g7_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000912242424"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b22_n_0
    );
g7_b23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0410000000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b23_n_0
    );
g7_b26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1659245A34686868"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b26_n_0
    );
g7_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0208004912242424"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b27_n_0
    );
g7_b28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1659241224484848"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b28_n_0
    );
g7_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C71C010993272727"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b29_n_0
    );
g7_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D71C004981240124"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b3_n_0
    );
g7_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C75D245BA56C496C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b4_n_0
    );
g7_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF7DB61BA56C496C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b6_n_0
    );
g7_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C71C000981240124"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b7_n_0
    );
g7_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D75D241BA56C496C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b9_n_0
    );
g8_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02CC3B1309286C23"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b0_n_0
    );
g8_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01DD6921282D6D81"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b1_n_0
    );
g8_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"21CCE9212424E491"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b11_n_0
    );
g8_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C4680000006000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b14_n_0
    );
g8_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0084680000006000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b15_n_0
    );
g8_b16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000101000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b16_n_0
    );
g8_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"390899392524A499"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b17_n_0
    );
g8_b18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02D560000A494002"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b18_n_0
    );
g8_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"63DDE92009096922"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b2_n_0
    );
g8_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6319836248490922"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b21_n_0
    );
g8_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2108812000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b22_n_0
    );
g8_b23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080400000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b23_n_0
    );
g8_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040200000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b27_n_0
    );
g8_b28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"42D1624248490922"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b28_n_0
    );
g8_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"18C4781803006008"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b29_n_0
    );
g8_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"42D5680008096922"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b3_n_0
    );
g8_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C46A4240406000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b4_n_0
    );
g8_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"42D56A436C496923"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b6_n_0
    );
g8_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C4680002006000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b7_n_0
    );
g8_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C4680124006000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b8_n_0
    );
g8_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"42D56A4248496922"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b9_n_0
    );
g9_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"100B062C0A8C3143"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b0_n_0
    );
g9_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1971E042E919159"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b1_n_0
    );
g9_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000408100040140"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b10_n_0
    );
g9_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7104000022609349"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b11_n_0
    );
g9_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7104081000040140"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b12_n_0
    );
g9_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000000000040140"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b14_n_0
    );
g9_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000000000200140"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b15_n_0
    );
g9_b16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1041020400080080"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b16_n_0
    );
g9_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"61861020224C92C9"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b17_n_0
    );
g9_b18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"861800004CB12500"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b18_n_0
    );
g9_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10935285624DB75B"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b2_n_0
    );
g9_b20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000408100000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b20_n_0
    );
g9_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"451414286AC1B61B"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b21_n_0
    );
g9_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0410000022409209"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b22_n_0
    );
g9_b23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b23_n_0
    );
g9_b26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"041050A14CB12412"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b26_n_0
    );
g9_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000408100100000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b27_n_0
    );
g9_b28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"451410204CB12412"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b28_n_0
    );
g9_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3CF0204043C01C0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b29_n_0
    );
g9_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"308942A54C912552"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b3_n_0
    );
g9_b30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4104000000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b30_n_0
    );
g9_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0005CB900040140"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b4_n_0
    );
g9_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3008102004200140"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b5_n_0
    );
g9_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3418102048852552"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b6_n_0
    );
g9_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000000004200140"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b7_n_0
    );
g9_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"341010204CA12552"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b9_n_0
    );
\spo[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_1_n_0\,
      I1 => \spo[0]_INST_0_i_2_n_0\,
      O => spo(0),
      S => a(10)
    );
\spo[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_3_n_0\,
      I1 => \spo[0]_INST_0_i_4_n_0\,
      I2 => a(9),
      I3 => \spo[0]_INST_0_i_5_n_0\,
      I4 => a(8),
      I5 => \spo[0]_INST_0_i_6_n_0\,
      O => \spo[0]_INST_0_i_1_n_0\
    );
\spo[0]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b0_n_0,
      I1 => g5_b0_n_0,
      O => \spo[0]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b0_n_0,
      I1 => g7_b0_n_0,
      O => \spo[0]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b0_n_0,
      I1 => g1_b0_n_0,
      O => \spo[0]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b0_n_0,
      I1 => g3_b0_n_0,
      O => \spo[0]_INST_0_i_13_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222E22"
    )
        port map (
      I0 => \spo[0]_INST_0_i_7_n_0\,
      I1 => a(8),
      I2 => a(7),
      I3 => g20_b0_n_0,
      I4 => a(6),
      I5 => a(9),
      O => \spo[0]_INST_0_i_2_n_0\
    );
\spo[0]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => a(7),
      I1 => g13_b0_n_0,
      I2 => a(6),
      I3 => g12_b0_n_0,
      O => \spo[0]_INST_0_i_3_n_0\
    );
\spo[0]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[0]_INST_0_i_8_n_0\,
      I1 => \spo[0]_INST_0_i_9_n_0\,
      O => \spo[0]_INST_0_i_4_n_0\,
      S => a(7)
    );
\spo[0]_INST_0_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[0]_INST_0_i_10_n_0\,
      I1 => \spo[0]_INST_0_i_11_n_0\,
      O => \spo[0]_INST_0_i_5_n_0\,
      S => a(7)
    );
\spo[0]_INST_0_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[0]_INST_0_i_12_n_0\,
      I1 => \spo[0]_INST_0_i_13_n_0\,
      O => \spo[0]_INST_0_i_6_n_0\,
      S => a(7)
    );
\spo[0]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8F3B8C0"
    )
        port map (
      I0 => g19_b0_n_0,
      I1 => a(7),
      I2 => g13_b0_n_0,
      I3 => a(6),
      I4 => g16_b0_n_0,
      O => \spo[0]_INST_0_i_7_n_0\
    );
\spo[0]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b0_n_0,
      I1 => g9_b0_n_0,
      O => \spo[0]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b0_n_0,
      I1 => g11_b0_n_0,
      O => \spo[0]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \spo[10]_INST_0_i_1_n_0\,
      I1 => a(10),
      I2 => \spo[10]_INST_0_i_2_n_0\,
      I3 => a(9),
      I4 => \spo[10]_INST_0_i_3_n_0\,
      O => spo(10)
    );
\spo[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303333BB30000088"
    )
        port map (
      I0 => g20_b10_n_0,
      I1 => a(8),
      I2 => g19_b10_n_0,
      I3 => a(6),
      I4 => a(7),
      I5 => g13_b10_n_0,
      O => \spo[10]_INST_0_i_1_n_0\
    );
\spo[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8FFFFCDC80000"
    )
        port map (
      I0 => a(7),
      I1 => g13_b10_n_0,
      I2 => a(6),
      I3 => g12_b10_n_0,
      I4 => a(8),
      I5 => \spo[10]_INST_0_i_4_n_0\,
      O => \spo[10]_INST_0_i_2_n_0\
    );
\spo[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[10]_INST_0_i_5_n_0\,
      I1 => \spo[10]_INST_0_i_6_n_0\,
      I2 => a(8),
      I3 => \spo[10]_INST_0_i_7_n_0\,
      I4 => a(7),
      I5 => \spo[10]_INST_0_i_8_n_0\,
      O => \spo[10]_INST_0_i_3_n_0\
    );
\spo[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g11_b10_n_0,
      I1 => g10_b10_n_0,
      I2 => a(7),
      I3 => g9_b10_n_0,
      I4 => a(6),
      I5 => g8_b14_n_0,
      O => \spo[10]_INST_0_i_4_n_0\
    );
\spo[10]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b10_n_0,
      I1 => g7_b10_n_0,
      O => \spo[10]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[10]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b10_n_0,
      I1 => g5_b10_n_0,
      O => \spo[10]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[10]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b10_n_0,
      I1 => g3_b10_n_0,
      O => \spo[10]_INST_0_i_7_n_0\,
      S => a(6)
    );
\spo[10]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b10_n_0,
      I1 => g1_b10_n_0,
      O => \spo[10]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[11]_INST_0_i_1_n_0\,
      I1 => a(10),
      I2 => \spo[11]_INST_0_i_2_n_0\,
      I3 => a(9),
      I4 => \spo[11]_INST_0_i_3_n_0\,
      O => spo(11)
    );
\spo[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005800080"
    )
        port map (
      I0 => a(6),
      I1 => g19_b30_n_0,
      I2 => a(7),
      I3 => a(8),
      I4 => g20_b15_n_0,
      I5 => a(9),
      O => \spo[11]_INST_0_i_1_n_0\
    );
\spo[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => a(6),
      I1 => g12_b11_n_0,
      I2 => a(8),
      I3 => \spo[11]_INST_0_i_4_n_0\,
      I4 => a(7),
      I5 => \spo[11]_INST_0_i_5_n_0\,
      O => \spo[11]_INST_0_i_2_n_0\
    );
\spo[11]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[11]_INST_0_i_6_n_0\,
      I1 => \spo[11]_INST_0_i_7_n_0\,
      O => \spo[11]_INST_0_i_3_n_0\,
      S => a(8)
    );
\spo[11]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b11_n_0,
      I1 => g11_b11_n_0,
      O => \spo[11]_INST_0_i_4_n_0\,
      S => a(6)
    );
\spo[11]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b11_n_0,
      I1 => g9_b11_n_0,
      O => \spo[11]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[11]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => g3_b11_n_0,
      I1 => g2_b11_n_0,
      I2 => a(7),
      I3 => a(6),
      I4 => g1_b11_n_0,
      O => \spo[11]_INST_0_i_6_n_0\
    );
\spo[11]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g7_b11_n_0,
      I1 => g6_b11_n_0,
      I2 => a(7),
      I3 => g5_b15_n_0,
      I4 => a(6),
      I5 => g4_b11_n_0,
      O => \spo[11]_INST_0_i_7_n_0\
    );
\spo[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F008F8F0F008080"
    )
        port map (
      I0 => \spo[12]_INST_0_i_1_n_0\,
      I1 => a(8),
      I2 => a(10),
      I3 => \spo[12]_INST_0_i_2_n_0\,
      I4 => a(9),
      I5 => \spo[12]_INST_0_i_3_n_0\,
      O => spo(12)
    );
\spo[12]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => a(6),
      I1 => g20_b14_n_0,
      I2 => a(7),
      O => \spo[12]_INST_0_i_1_n_0\
    );
\spo[12]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => a(6),
      I1 => g12_b12_n_0,
      I2 => a(7),
      I3 => a(8),
      I4 => \spo[12]_INST_0_i_4_n_0\,
      O => \spo[12]_INST_0_i_2_n_0\
    );
\spo[12]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[12]_INST_0_i_5_n_0\,
      I1 => \spo[12]_INST_0_i_6_n_0\,
      O => \spo[12]_INST_0_i_3_n_0\,
      S => a(8)
    );
\spo[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g11_b12_n_0,
      I1 => g10_b12_n_0,
      I2 => a(7),
      I3 => g9_b12_n_0,
      I4 => a(6),
      I5 => g8_b14_n_0,
      O => \spo[12]_INST_0_i_4_n_0\
    );
\spo[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g3_b14_n_0,
      I1 => g2_b14_n_0,
      I2 => a(7),
      I3 => g1_b12_n_0,
      I4 => a(6),
      I5 => g0_b12_n_0,
      O => \spo[12]_INST_0_i_5_n_0\
    );
\spo[12]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g7_b14_n_0,
      I1 => g6_b14_n_0,
      I2 => a(7),
      I3 => g5_b12_n_0,
      I4 => a(6),
      I5 => g4_b14_n_0,
      O => \spo[12]_INST_0_i_6_n_0\
    );
\spo[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[14]_INST_0_i_1_n_0\,
      I1 => a(10),
      I2 => \spo[13]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => \spo[13]_INST_0_i_2_n_0\,
      O => spo(13)
    );
\spo[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => a(6),
      I1 => g12_b13_n_0,
      I2 => a(7),
      I3 => a(8),
      I4 => \spo[13]_INST_0_i_3_n_0\,
      O => \spo[13]_INST_0_i_1_n_0\
    );
\spo[13]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[13]_INST_0_i_4_n_0\,
      I1 => \spo[13]_INST_0_i_5_n_0\,
      O => \spo[13]_INST_0_i_2_n_0\,
      S => a(8)
    );
\spo[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g11_b15_n_0,
      I1 => g10_b15_n_0,
      I2 => a(7),
      I3 => g9_b15_n_0,
      I4 => a(6),
      I5 => g8_b14_n_0,
      O => \spo[13]_INST_0_i_3_n_0\
    );
\spo[13]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => g3_b15_n_0,
      I1 => g2_b13_n_0,
      I2 => a(7),
      I3 => a(6),
      I4 => g1_b13_n_0,
      O => \spo[13]_INST_0_i_4_n_0\
    );
\spo[13]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g7_b14_n_0,
      I1 => g6_b14_n_0,
      I2 => a(7),
      I3 => g5_b13_n_0,
      I4 => a(6),
      I5 => g4_b15_n_0,
      O => \spo[13]_INST_0_i_5_n_0\
    );
\spo[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[14]_INST_0_i_1_n_0\,
      I1 => a(10),
      I2 => \spo[14]_INST_0_i_2_n_0\,
      I3 => a(9),
      I4 => \spo[14]_INST_0_i_3_n_0\,
      O => spo(14)
    );
\spo[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005800080"
    )
        port map (
      I0 => a(6),
      I1 => g19_b30_n_0,
      I2 => a(7),
      I3 => a(8),
      I4 => g20_b14_n_0,
      I5 => a(9),
      O => \spo[14]_INST_0_i_1_n_0\
    );
\spo[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => a(6),
      I1 => g12_b14_n_0,
      I2 => a(7),
      I3 => a(8),
      I4 => \spo[14]_INST_0_i_4_n_0\,
      O => \spo[14]_INST_0_i_2_n_0\
    );
\spo[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => \spo[14]_INST_0_i_5_n_0\,
      I1 => a(8),
      I2 => \spo[14]_INST_0_i_6_n_0\,
      I3 => a(7),
      I4 => a(6),
      I5 => g1_b14_n_0,
      O => \spo[14]_INST_0_i_3_n_0\
    );
\spo[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g11_b15_n_0,
      I1 => g10_b15_n_0,
      I2 => a(7),
      I3 => g9_b14_n_0,
      I4 => a(6),
      I5 => g8_b14_n_0,
      O => \spo[14]_INST_0_i_4_n_0\
    );
\spo[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g7_b14_n_0,
      I1 => g6_b14_n_0,
      I2 => a(7),
      I3 => g5_b14_n_0,
      I4 => a(6),
      I5 => g4_b14_n_0,
      O => \spo[14]_INST_0_i_5_n_0\
    );
\spo[14]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b14_n_0,
      I1 => g3_b14_n_0,
      O => \spo[14]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F008F8F0F008080"
    )
        port map (
      I0 => \spo[15]_INST_0_i_1_n_0\,
      I1 => a(8),
      I2 => a(10),
      I3 => \spo[15]_INST_0_i_2_n_0\,
      I4 => a(9),
      I5 => \spo[15]_INST_0_i_3_n_0\,
      O => spo(15)
    );
\spo[15]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => a(6),
      I1 => g20_b15_n_0,
      I2 => a(7),
      O => \spo[15]_INST_0_i_1_n_0\
    );
\spo[15]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => a(6),
      I1 => g12_b15_n_0,
      I2 => a(7),
      I3 => a(8),
      I4 => \spo[15]_INST_0_i_4_n_0\,
      O => \spo[15]_INST_0_i_2_n_0\
    );
\spo[15]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[15]_INST_0_i_5_n_0\,
      I1 => \spo[15]_INST_0_i_6_n_0\,
      O => \spo[15]_INST_0_i_3_n_0\,
      S => a(8)
    );
\spo[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g11_b15_n_0,
      I1 => g10_b15_n_0,
      I2 => a(7),
      I3 => g9_b15_n_0,
      I4 => a(6),
      I5 => g8_b15_n_0,
      O => \spo[15]_INST_0_i_4_n_0\
    );
\spo[15]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => g3_b15_n_0,
      I1 => g2_b15_n_0,
      I2 => a(7),
      I3 => a(6),
      I4 => g1_b15_n_0,
      O => \spo[15]_INST_0_i_5_n_0\
    );
\spo[15]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g7_b15_n_0,
      I1 => g6_b15_n_0,
      I2 => a(7),
      I3 => g5_b15_n_0,
      I4 => a(6),
      I5 => g4_b15_n_0,
      O => \spo[15]_INST_0_i_6_n_0\
    );
\spo[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[16]_INST_0_i_1_n_0\,
      I1 => a(10),
      I2 => \spo[16]_INST_0_i_2_n_0\,
      I3 => a(9),
      I4 => \spo[16]_INST_0_i_3_n_0\,
      O => spo(16)
    );
\spo[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005800080"
    )
        port map (
      I0 => a(6),
      I1 => g19_b28_n_0,
      I2 => a(7),
      I3 => a(8),
      I4 => g20_b16_n_0,
      I5 => a(9),
      O => \spo[16]_INST_0_i_1_n_0\
    );
\spo[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => a(6),
      I1 => g12_b16_n_0,
      I2 => a(8),
      I3 => \spo[16]_INST_0_i_4_n_0\,
      I4 => a(7),
      I5 => \spo[16]_INST_0_i_5_n_0\,
      O => \spo[16]_INST_0_i_2_n_0\
    );
\spo[16]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[16]_INST_0_i_6_n_0\,
      I1 => a(8),
      I2 => \spo[16]_INST_0_i_7_n_0\,
      I3 => a(7),
      I4 => \spo[16]_INST_0_i_8_n_0\,
      O => \spo[16]_INST_0_i_3_n_0\
    );
\spo[16]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b16_n_0,
      I1 => g11_b16_n_0,
      O => \spo[16]_INST_0_i_4_n_0\,
      S => a(6)
    );
\spo[16]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b16_n_0,
      I1 => g9_b16_n_0,
      O => \spo[16]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[16]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g7_b22_n_0,
      I1 => g6_b16_n_0,
      I2 => a(7),
      I3 => g5_b16_n_0,
      I4 => a(6),
      I5 => g4_b16_n_0,
      O => \spo[16]_INST_0_i_6_n_0\
    );
\spo[16]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b16_n_0,
      I1 => g3_b16_n_0,
      O => \spo[16]_INST_0_i_7_n_0\,
      S => a(6)
    );
\spo[16]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b16_n_0,
      I1 => g1_b16_n_0,
      O => \spo[16]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[17]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[17]_INST_0_i_1_n_0\,
      I1 => \spo[17]_INST_0_i_2_n_0\,
      O => spo(17),
      S => a(10)
    );
\spo[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g13_b29__6_n_0\,
      I1 => \spo[17]_INST_0_i_3_n_0\,
      I2 => a(9),
      I3 => \spo[17]_INST_0_i_4_n_0\,
      I4 => a(8),
      I5 => \spo[17]_INST_0_i_5_n_0\,
      O => \spo[17]_INST_0_i_1_n_0\
    );
\spo[17]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b17_n_0,
      I1 => g1_b17_n_0,
      O => \spo[17]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[17]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b17_n_0,
      I1 => g3_b17_n_0,
      O => \spo[17]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222E22"
    )
        port map (
      I0 => \g13_b29__1_n_0\,
      I1 => a(8),
      I2 => a(7),
      I3 => g20_b17_n_0,
      I4 => a(6),
      I5 => a(9),
      O => \spo[17]_INST_0_i_2_n_0\
    );
\spo[17]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[17]_INST_0_i_6_n_0\,
      I1 => \spo[17]_INST_0_i_7_n_0\,
      O => \spo[17]_INST_0_i_3_n_0\,
      S => a(7)
    );
\spo[17]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[17]_INST_0_i_8_n_0\,
      I1 => \spo[17]_INST_0_i_9_n_0\,
      O => \spo[17]_INST_0_i_4_n_0\,
      S => a(7)
    );
\spo[17]_INST_0_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[17]_INST_0_i_10_n_0\,
      I1 => \spo[17]_INST_0_i_11_n_0\,
      O => \spo[17]_INST_0_i_5_n_0\,
      S => a(7)
    );
\spo[17]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b17_n_0,
      I1 => g9_b17_n_0,
      O => \spo[17]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[17]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b17_n_0,
      I1 => g11_b17_n_0,
      O => \spo[17]_INST_0_i_7_n_0\,
      S => a(6)
    );
\spo[17]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b17_n_0,
      I1 => g5_b17_n_0,
      O => \spo[17]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[17]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b17_n_0,
      I1 => g7_b17_n_0,
      O => \spo[17]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[18]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[18]_INST_0_i_1_n_0\,
      I1 => \spo[18]_INST_0_i_2_n_0\,
      O => spo(18),
      S => a(10)
    );
\spo[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g13_b29__5_n_0\,
      I1 => \spo[18]_INST_0_i_3_n_0\,
      I2 => a(9),
      I3 => \spo[18]_INST_0_i_4_n_0\,
      I4 => a(8),
      I5 => \spo[18]_INST_0_i_5_n_0\,
      O => \spo[18]_INST_0_i_1_n_0\
    );
\spo[18]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b18_n_0,
      I1 => g1_b18_n_0,
      O => \spo[18]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[18]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b18_n_0,
      I1 => g3_b18_n_0,
      O => \spo[18]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[18]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g13_b29__4_n_0\,
      I1 => a(9),
      O => \spo[18]_INST_0_i_2_n_0\
    );
\spo[18]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[18]_INST_0_i_6_n_0\,
      I1 => \spo[18]_INST_0_i_7_n_0\,
      O => \spo[18]_INST_0_i_3_n_0\,
      S => a(7)
    );
\spo[18]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[18]_INST_0_i_8_n_0\,
      I1 => \spo[18]_INST_0_i_9_n_0\,
      O => \spo[18]_INST_0_i_4_n_0\,
      S => a(7)
    );
\spo[18]_INST_0_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[18]_INST_0_i_10_n_0\,
      I1 => \spo[18]_INST_0_i_11_n_0\,
      O => \spo[18]_INST_0_i_5_n_0\,
      S => a(7)
    );
\spo[18]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b18_n_0,
      I1 => g9_b18_n_0,
      O => \spo[18]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[18]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b18_n_0,
      I1 => g11_b18_n_0,
      O => \spo[18]_INST_0_i_7_n_0\,
      S => a(6)
    );
\spo[18]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b18_n_0,
      I1 => g5_b18_n_0,
      O => \spo[18]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[18]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b18_n_0,
      I1 => g7_b18_n_0,
      O => \spo[18]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \g13_b29__2_n_0\,
      I1 => a(10),
      I2 => \g13_b29__3_n_0\,
      I3 => a(9),
      I4 => \spo[19]_INST_0_i_1_n_0\,
      O => spo(19)
    );
\spo[19]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => a(7),
      I1 => g1_b19_n_0,
      I2 => a(6),
      I3 => g0_b19_n_0,
      I4 => a(8),
      O => \spo[19]_INST_0_i_1_n_0\
    );
\spo[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_1_n_0\,
      I1 => \spo[1]_INST_0_i_2_n_0\,
      O => spo(1),
      S => a(10)
    );
\spo[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_3_n_0\,
      I1 => \spo[1]_INST_0_i_4_n_0\,
      I2 => a(9),
      I3 => \spo[1]_INST_0_i_5_n_0\,
      I4 => a(8),
      I5 => \spo[1]_INST_0_i_6_n_0\,
      O => \spo[1]_INST_0_i_1_n_0\
    );
\spo[1]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b1_n_0,
      I1 => g5_b1_n_0,
      O => \spo[1]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b1_n_0,
      I1 => g7_b1_n_0,
      O => \spo[1]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b1_n_0,
      I1 => g1_b1_n_0,
      O => \spo[1]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b1_n_0,
      I1 => g3_b1_n_0,
      O => \spo[1]_INST_0_i_13_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222E22"
    )
        port map (
      I0 => \spo[1]_INST_0_i_7_n_0\,
      I1 => a(8),
      I2 => a(7),
      I3 => g20_b1_n_0,
      I4 => a(6),
      I5 => a(9),
      O => \spo[1]_INST_0_i_2_n_0\
    );
\spo[1]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => a(7),
      I1 => g13_b1_n_0,
      I2 => a(6),
      I3 => g12_b1_n_0,
      O => \spo[1]_INST_0_i_3_n_0\
    );
\spo[1]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[1]_INST_0_i_8_n_0\,
      I1 => \spo[1]_INST_0_i_9_n_0\,
      O => \spo[1]_INST_0_i_4_n_0\,
      S => a(7)
    );
\spo[1]_INST_0_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[1]_INST_0_i_10_n_0\,
      I1 => \spo[1]_INST_0_i_11_n_0\,
      O => \spo[1]_INST_0_i_5_n_0\,
      S => a(7)
    );
\spo[1]_INST_0_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[1]_INST_0_i_12_n_0\,
      I1 => \spo[1]_INST_0_i_13_n_0\,
      O => \spo[1]_INST_0_i_6_n_0\,
      S => a(7)
    );
\spo[1]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8F3B8C0"
    )
        port map (
      I0 => g19_b1_n_0,
      I1 => a(7),
      I2 => g13_b1_n_0,
      I3 => a(6),
      I4 => g16_b1_n_0,
      O => \spo[1]_INST_0_i_7_n_0\
    );
\spo[1]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b1_n_0,
      I1 => g9_b1_n_0,
      O => \spo[1]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b1_n_0,
      I1 => g11_b1_n_0,
      O => \spo[1]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \spo[20]_INST_0_i_1_n_0\,
      I1 => a(10),
      I2 => \spo[20]_INST_0_i_2_n_0\,
      I3 => a(9),
      I4 => \spo[20]_INST_0_i_3_n_0\,
      O => spo(20)
    );
\spo[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303333BB30000088"
    )
        port map (
      I0 => g20_b20_n_0,
      I1 => a(8),
      I2 => g19_b20_n_0,
      I3 => a(6),
      I4 => a(7),
      I5 => g13_b20_n_0,
      O => \spo[20]_INST_0_i_1_n_0\
    );
\spo[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8FFFFCDC80000"
    )
        port map (
      I0 => a(7),
      I1 => g13_b20_n_0,
      I2 => a(6),
      I3 => g12_b20_n_0,
      I4 => a(8),
      I5 => \spo[20]_INST_0_i_4_n_0\,
      O => \spo[20]_INST_0_i_2_n_0\
    );
\spo[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[20]_INST_0_i_5_n_0\,
      I1 => \spo[20]_INST_0_i_6_n_0\,
      I2 => a(8),
      I3 => \spo[20]_INST_0_i_7_n_0\,
      I4 => a(7),
      I5 => \spo[20]_INST_0_i_8_n_0\,
      O => \spo[20]_INST_0_i_3_n_0\
    );
\spo[20]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => g11_b20_n_0,
      I1 => g10_b20_n_0,
      I2 => a(7),
      I3 => a(6),
      I4 => g9_b20_n_0,
      O => \spo[20]_INST_0_i_4_n_0\
    );
\spo[20]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b20_n_0,
      I1 => g7_b20_n_0,
      O => \spo[20]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[20]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b20_n_0,
      I1 => g5_b20_n_0,
      O => \spo[20]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[20]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b20_n_0,
      I1 => g3_b20_n_0,
      O => \spo[20]_INST_0_i_7_n_0\,
      S => a(6)
    );
\spo[20]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b20_n_0,
      I1 => g1_b20_n_0,
      O => \spo[20]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[21]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[21]_INST_0_i_1_n_0\,
      I1 => \spo[21]_INST_0_i_2_n_0\,
      O => spo(21),
      S => a(10)
    );
\spo[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[21]_INST_0_i_3_n_0\,
      I1 => \spo[21]_INST_0_i_4_n_0\,
      I2 => a(9),
      I3 => \spo[21]_INST_0_i_5_n_0\,
      I4 => a(8),
      I5 => \spo[21]_INST_0_i_6_n_0\,
      O => \spo[21]_INST_0_i_1_n_0\
    );
\spo[21]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b21_n_0,
      I1 => g5_b21_n_0,
      O => \spo[21]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[21]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b21_n_0,
      I1 => g7_b21_n_0,
      O => \spo[21]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[21]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b21_n_0,
      I1 => g1_b21_n_0,
      O => \spo[21]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[21]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b21_n_0,
      I1 => g3_b21_n_0,
      O => \spo[21]_INST_0_i_13_n_0\,
      S => a(6)
    );
\spo[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222E22"
    )
        port map (
      I0 => \spo[21]_INST_0_i_7_n_0\,
      I1 => a(8),
      I2 => a(7),
      I3 => g20_b21_n_0,
      I4 => a(6),
      I5 => a(9),
      O => \spo[21]_INST_0_i_2_n_0\
    );
\spo[21]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => a(7),
      I1 => g13_b31_n_0,
      I2 => a(6),
      I3 => g12_b21_n_0,
      O => \spo[21]_INST_0_i_3_n_0\
    );
\spo[21]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[21]_INST_0_i_8_n_0\,
      I1 => \spo[21]_INST_0_i_9_n_0\,
      O => \spo[21]_INST_0_i_4_n_0\,
      S => a(7)
    );
\spo[21]_INST_0_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[21]_INST_0_i_10_n_0\,
      I1 => \spo[21]_INST_0_i_11_n_0\,
      O => \spo[21]_INST_0_i_5_n_0\,
      S => a(7)
    );
\spo[21]_INST_0_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[21]_INST_0_i_12_n_0\,
      I1 => \spo[21]_INST_0_i_13_n_0\,
      O => \spo[21]_INST_0_i_6_n_0\,
      S => a(7)
    );
\spo[21]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => g19_b23_n_0,
      I1 => a(6),
      I2 => a(7),
      I3 => g13_b31_n_0,
      O => \spo[21]_INST_0_i_7_n_0\
    );
\spo[21]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b21_n_0,
      I1 => g9_b21_n_0,
      O => \spo[21]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[21]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b21_n_0,
      I1 => g11_b21_n_0,
      O => \spo[21]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[22]_INST_0_i_1_n_0\,
      I1 => a(10),
      I2 => \spo[22]_INST_0_i_2_n_0\,
      I3 => a(9),
      I4 => \spo[22]_INST_0_i_3_n_0\,
      O => spo(22)
    );
\spo[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005800080"
    )
        port map (
      I0 => a(6),
      I1 => g19_b22_n_0,
      I2 => a(7),
      I3 => a(8),
      I4 => g20_b22_n_0,
      I5 => a(9),
      O => \spo[22]_INST_0_i_1_n_0\
    );
\spo[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => a(6),
      I1 => g12_b22_n_0,
      I2 => a(8),
      I3 => \spo[22]_INST_0_i_4_n_0\,
      I4 => a(7),
      I5 => \spo[22]_INST_0_i_5_n_0\,
      O => \spo[22]_INST_0_i_2_n_0\
    );
\spo[22]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[22]_INST_0_i_6_n_0\,
      I1 => \spo[22]_INST_0_i_7_n_0\,
      O => \spo[22]_INST_0_i_3_n_0\,
      S => a(8)
    );
\spo[22]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b22_n_0,
      I1 => g11_b22_n_0,
      O => \spo[22]_INST_0_i_4_n_0\,
      S => a(6)
    );
\spo[22]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b22_n_0,
      I1 => g9_b22_n_0,
      O => \spo[22]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[22]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => g3_b22_n_0,
      I1 => g2_b22_n_0,
      I2 => a(7),
      I3 => a(6),
      I4 => g1_b22_n_0,
      O => \spo[22]_INST_0_i_6_n_0\
    );
\spo[22]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g7_b22_n_0,
      I1 => g6_b22_n_0,
      I2 => a(7),
      I3 => g5_b22_n_0,
      I4 => a(6),
      I5 => g4_b22_n_0,
      O => \spo[22]_INST_0_i_7_n_0\
    );
\spo[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \spo[23]_INST_0_i_1_n_0\,
      I1 => a(10),
      I2 => \spo[23]_INST_0_i_2_n_0\,
      I3 => a(9),
      I4 => \spo[23]_INST_0_i_3_n_0\,
      O => spo(23)
    );
\spo[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303333BB30000088"
    )
        port map (
      I0 => g20_b23_n_0,
      I1 => a(8),
      I2 => g19_b23_n_0,
      I3 => a(6),
      I4 => a(7),
      I5 => g13_b31_n_0,
      O => \spo[23]_INST_0_i_1_n_0\
    );
\spo[23]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[23]_INST_0_i_4_n_0\,
      I1 => a(8),
      I2 => \spo[23]_INST_0_i_5_n_0\,
      I3 => a(7),
      I4 => \spo[23]_INST_0_i_6_n_0\,
      O => \spo[23]_INST_0_i_2_n_0\
    );
\spo[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88FFF0008800F000"
    )
        port map (
      I0 => a(6),
      I1 => g7_b23_n_0,
      I2 => \spo[23]_INST_0_i_7_n_0\,
      I3 => a(8),
      I4 => a(7),
      I5 => \spo[23]_INST_0_i_8_n_0\,
      O => \spo[23]_INST_0_i_3_n_0\
    );
\spo[23]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => a(7),
      I1 => g13_b31_n_0,
      I2 => a(6),
      I3 => g12_b23_n_0,
      O => \spo[23]_INST_0_i_4_n_0\
    );
\spo[23]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b23_n_0,
      I1 => g11_b23_n_0,
      O => \spo[23]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[23]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b23_n_0,
      I1 => g9_b23_n_0,
      O => \spo[23]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[23]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b23_n_0,
      I1 => g5_b23_n_0,
      O => \spo[23]_INST_0_i_7_n_0\,
      S => a(6)
    );
\spo[23]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b23_n_0,
      I1 => g3_b23_n_0,
      O => \spo[23]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \spo[24]_INST_0_i_1_n_0\,
      I1 => a(10),
      I2 => \spo[24]_INST_0_i_2_n_0\,
      I3 => a(9),
      I4 => \spo[25]_INST_0_i_3_n_0\,
      O => spo(24)
    );
\spo[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303333BB30000088"
    )
        port map (
      I0 => g20_b24_n_0,
      I1 => a(8),
      I2 => g19_b25_n_0,
      I3 => a(6),
      I4 => a(7),
      I5 => g13_b31_n_0,
      O => \spo[24]_INST_0_i_1_n_0\
    );
\spo[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0A0A0A0C0A0C0"
    )
        port map (
      I0 => g13_b31_n_0,
      I1 => g12_b24_n_0,
      I2 => a(8),
      I3 => a(7),
      I4 => g11_b24_n_0,
      I5 => a(6),
      O => \spo[24]_INST_0_i_2_n_0\
    );
\spo[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \spo[25]_INST_0_i_1_n_0\,
      I1 => a(10),
      I2 => \spo[25]_INST_0_i_2_n_0\,
      I3 => a(9),
      I4 => \spo[25]_INST_0_i_3_n_0\,
      O => spo(25)
    );
\spo[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303333BB30000088"
    )
        port map (
      I0 => g20_b25_n_0,
      I1 => a(8),
      I2 => g19_b25_n_0,
      I3 => a(6),
      I4 => a(7),
      I5 => g13_b31_n_0,
      O => \spo[25]_INST_0_i_1_n_0\
    );
\spo[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0A0A0A0C0A0C0"
    )
        port map (
      I0 => g13_b31_n_0,
      I1 => g12_b31_n_0,
      I2 => a(8),
      I3 => a(7),
      I4 => g11_b25_n_0,
      I5 => a(6),
      O => \spo[25]_INST_0_i_2_n_0\
    );
\spo[25]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => a(7),
      I1 => g0_b25_n_0,
      I2 => a(6),
      I3 => a(8),
      O => \spo[25]_INST_0_i_3_n_0\
    );
\spo[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \spo[26]_INST_0_i_1_n_0\,
      I1 => a(10),
      I2 => \spo[26]_INST_0_i_2_n_0\,
      I3 => a(9),
      I4 => \spo[26]_INST_0_i_3_n_0\,
      O => spo(26)
    );
\spo[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303333BB30000088"
    )
        port map (
      I0 => g20_b26_n_0,
      I1 => a(8),
      I2 => g19_b26_n_0,
      I3 => a(6),
      I4 => a(7),
      I5 => g13_b31_n_0,
      O => \spo[26]_INST_0_i_1_n_0\
    );
\spo[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8FFFFCDC80000"
    )
        port map (
      I0 => a(7),
      I1 => g13_b31_n_0,
      I2 => a(6),
      I3 => g12_b26_n_0,
      I4 => a(8),
      I5 => \spo[26]_INST_0_i_4_n_0\,
      O => \spo[26]_INST_0_i_2_n_0\
    );
\spo[26]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[26]_INST_0_i_5_n_0\,
      I1 => a(7),
      I2 => \spo[26]_INST_0_i_6_n_0\,
      I3 => a(8),
      I4 => \spo[26]_INST_0_i_7_n_0\,
      O => \spo[26]_INST_0_i_3_n_0\
    );
\spo[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g11_b26_n_0,
      I1 => g10_b26_n_0,
      I2 => a(7),
      I3 => g9_b26_n_0,
      I4 => a(6),
      I5 => g8_b28_n_0,
      O => \spo[26]_INST_0_i_4_n_0\
    );
\spo[26]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b26_n_0,
      I1 => g7_b26_n_0,
      O => \spo[26]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[26]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b26_n_0,
      I1 => g5_b26_n_0,
      O => \spo[26]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[26]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g3_b26_n_0,
      I1 => g2_b26_n_0,
      I2 => a(7),
      I3 => g1_b26_n_0,
      I4 => a(6),
      I5 => g0_b28_n_0,
      O => \spo[26]_INST_0_i_7_n_0\
    );
\spo[27]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[27]_INST_0_i_1_n_0\,
      I1 => \spo[27]_INST_0_i_2_n_0\,
      O => spo(27),
      S => a(10)
    );
\spo[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[27]_INST_0_i_3_n_0\,
      I1 => \spo[27]_INST_0_i_4_n_0\,
      I2 => a(9),
      I3 => \spo[27]_INST_0_i_5_n_0\,
      I4 => a(8),
      I5 => \spo[27]_INST_0_i_6_n_0\,
      O => \spo[27]_INST_0_i_1_n_0\
    );
\spo[27]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b27_n_0,
      I1 => g5_b27_n_0,
      O => \spo[27]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[27]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b27_n_0,
      I1 => g7_b27_n_0,
      O => \spo[27]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[27]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b27_n_0,
      I1 => g1_b27_n_0,
      O => \spo[27]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[27]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b27_n_0,
      I1 => g3_b27_n_0,
      O => \spo[27]_INST_0_i_13_n_0\,
      S => a(6)
    );
\spo[27]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spo[27]_INST_0_i_7_n_0\,
      I1 => a(9),
      O => \spo[27]_INST_0_i_2_n_0\
    );
\spo[27]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => a(7),
      I1 => g13_b27_n_0,
      I2 => a(6),
      I3 => g12_b27_n_0,
      O => \spo[27]_INST_0_i_3_n_0\
    );
\spo[27]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[27]_INST_0_i_8_n_0\,
      I1 => \spo[27]_INST_0_i_9_n_0\,
      O => \spo[27]_INST_0_i_4_n_0\,
      S => a(7)
    );
\spo[27]_INST_0_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[27]_INST_0_i_10_n_0\,
      I1 => \spo[27]_INST_0_i_11_n_0\,
      O => \spo[27]_INST_0_i_5_n_0\,
      S => a(7)
    );
\spo[27]_INST_0_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[27]_INST_0_i_12_n_0\,
      I1 => \spo[27]_INST_0_i_13_n_0\,
      O => \spo[27]_INST_0_i_6_n_0\,
      S => a(7)
    );
\spo[27]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303333BB30000088"
    )
        port map (
      I0 => g20_b27_n_0,
      I1 => a(8),
      I2 => g19_b27_n_0,
      I3 => a(6),
      I4 => a(7),
      I5 => g13_b27_n_0,
      O => \spo[27]_INST_0_i_7_n_0\
    );
\spo[27]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b27_n_0,
      I1 => g9_b27_n_0,
      O => \spo[27]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[27]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b27_n_0,
      I1 => g11_b27_n_0,
      O => \spo[27]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[28]_INST_0_i_1_n_0\,
      I1 => a(10),
      I2 => \spo[28]_INST_0_i_2_n_0\,
      I3 => a(9),
      I4 => \spo[28]_INST_0_i_3_n_0\,
      O => spo(28)
    );
\spo[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005800080"
    )
        port map (
      I0 => a(6),
      I1 => g19_b28_n_0,
      I2 => a(7),
      I3 => a(8),
      I4 => g20_b28_n_0,
      I5 => a(9),
      O => \spo[28]_INST_0_i_1_n_0\
    );
\spo[28]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => a(6),
      I1 => g12_b28_n_0,
      I2 => a(7),
      I3 => a(8),
      I4 => \spo[28]_INST_0_i_4_n_0\,
      O => \spo[28]_INST_0_i_2_n_0\
    );
\spo[28]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[28]_INST_0_i_5_n_0\,
      I1 => a(7),
      I2 => \spo[28]_INST_0_i_6_n_0\,
      I3 => a(8),
      I4 => \spo[28]_INST_0_i_7_n_0\,
      O => \spo[28]_INST_0_i_3_n_0\
    );
\spo[28]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g11_b28_n_0,
      I1 => g10_b28_n_0,
      I2 => a(7),
      I3 => g9_b28_n_0,
      I4 => a(6),
      I5 => g8_b28_n_0,
      O => \spo[28]_INST_0_i_4_n_0\
    );
\spo[28]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b28_n_0,
      I1 => g7_b28_n_0,
      O => \spo[28]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[28]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b28_n_0,
      I1 => g5_b28_n_0,
      O => \spo[28]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[28]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g3_b28_n_0,
      I1 => g2_b28_n_0,
      I2 => a(7),
      I3 => g1_b28_n_0,
      I4 => a(6),
      I5 => g0_b28_n_0,
      O => \spo[28]_INST_0_i_7_n_0\
    );
\spo[29]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[29]_INST_0_i_1_n_0\,
      I1 => \spo[29]_INST_0_i_2_n_0\,
      O => spo(29),
      S => a(10)
    );
\spo[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g13_b29__0_n_0\,
      I1 => \spo[29]_INST_0_i_3_n_0\,
      I2 => a(9),
      I3 => \spo[29]_INST_0_i_4_n_0\,
      I4 => a(8),
      I5 => \spo[29]_INST_0_i_5_n_0\,
      O => \spo[29]_INST_0_i_1_n_0\
    );
\spo[29]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b29_n_0,
      I1 => g1_b29_n_0,
      O => \spo[29]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[29]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b29_n_0,
      I1 => g3_b29_n_0,
      O => \spo[29]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[29]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g13_b29_n_0,
      I1 => a(9),
      O => \spo[29]_INST_0_i_2_n_0\
    );
\spo[29]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[29]_INST_0_i_6_n_0\,
      I1 => \spo[29]_INST_0_i_7_n_0\,
      O => \spo[29]_INST_0_i_3_n_0\,
      S => a(7)
    );
\spo[29]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[29]_INST_0_i_8_n_0\,
      I1 => \spo[29]_INST_0_i_9_n_0\,
      O => \spo[29]_INST_0_i_4_n_0\,
      S => a(7)
    );
\spo[29]_INST_0_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[29]_INST_0_i_10_n_0\,
      I1 => \spo[29]_INST_0_i_11_n_0\,
      O => \spo[29]_INST_0_i_5_n_0\,
      S => a(7)
    );
\spo[29]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b29_n_0,
      I1 => g9_b29_n_0,
      O => \spo[29]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[29]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b29_n_0,
      I1 => g11_b29_n_0,
      O => \spo[29]_INST_0_i_7_n_0\,
      S => a(6)
    );
\spo[29]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b29_n_0,
      I1 => g5_b29_n_0,
      O => \spo[29]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[29]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b29_n_0,
      I1 => g7_b29_n_0,
      O => \spo[29]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_1_n_0\,
      I1 => \spo[2]_INST_0_i_2_n_0\,
      O => spo(2),
      S => a(10)
    );
\spo[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_3_n_0\,
      I1 => \spo[2]_INST_0_i_4_n_0\,
      I2 => a(9),
      I3 => \spo[2]_INST_0_i_5_n_0\,
      I4 => a(8),
      I5 => \spo[2]_INST_0_i_6_n_0\,
      O => \spo[2]_INST_0_i_1_n_0\
    );
\spo[2]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b2_n_0,
      I1 => g5_b2_n_0,
      O => \spo[2]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b2_n_0,
      I1 => g7_b2_n_0,
      O => \spo[2]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b2_n_0,
      I1 => g1_b2_n_0,
      O => \spo[2]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b2_n_0,
      I1 => g3_b2_n_0,
      O => \spo[2]_INST_0_i_13_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spo[2]_INST_0_i_7_n_0\,
      I1 => a(9),
      O => \spo[2]_INST_0_i_2_n_0\
    );
\spo[2]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => a(7),
      I1 => g13_b2_n_0,
      I2 => a(6),
      I3 => g12_b2_n_0,
      O => \spo[2]_INST_0_i_3_n_0\
    );
\spo[2]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[2]_INST_0_i_8_n_0\,
      I1 => \spo[2]_INST_0_i_9_n_0\,
      O => \spo[2]_INST_0_i_4_n_0\,
      S => a(7)
    );
\spo[2]_INST_0_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[2]_INST_0_i_10_n_0\,
      I1 => \spo[2]_INST_0_i_11_n_0\,
      O => \spo[2]_INST_0_i_5_n_0\,
      S => a(7)
    );
\spo[2]_INST_0_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[2]_INST_0_i_12_n_0\,
      I1 => \spo[2]_INST_0_i_13_n_0\,
      O => \spo[2]_INST_0_i_6_n_0\,
      S => a(7)
    );
\spo[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303333BB30000088"
    )
        port map (
      I0 => g20_b2_n_0,
      I1 => a(8),
      I2 => g19_b2_n_0,
      I3 => a(6),
      I4 => a(7),
      I5 => g13_b2_n_0,
      O => \spo[2]_INST_0_i_7_n_0\
    );
\spo[2]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b2_n_0,
      I1 => g9_b2_n_0,
      O => \spo[2]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b2_n_0,
      I1 => g11_b2_n_0,
      O => \spo[2]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \spo[30]_INST_0_i_1_n_0\,
      I1 => a(10),
      I2 => a(9),
      I3 => \spo[30]_INST_0_i_2_n_0\,
      O => spo(30)
    );
\spo[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005800080"
    )
        port map (
      I0 => a(6),
      I1 => g19_b30_n_0,
      I2 => a(7),
      I3 => a(8),
      I4 => g20_b30_n_0,
      I5 => a(9),
      O => \spo[30]_INST_0_i_1_n_0\
    );
\spo[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033308800003088"
    )
        port map (
      I0 => g12_b30_n_0,
      I1 => a(8),
      I2 => g10_b30_n_0,
      I3 => a(7),
      I4 => a(6),
      I5 => g9_b30_n_0,
      O => \spo[30]_INST_0_i_2_n_0\
    );
\spo[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => a(10),
      I2 => \spo[31]_INST_0_i_2_n_0\,
      I3 => a(9),
      I4 => \spo[31]_INST_0_i_3_n_0\,
      O => spo(31)
    );
\spo[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303333BB30000088"
    )
        port map (
      I0 => g20_b31_n_0,
      I1 => a(8),
      I2 => g19_b31_n_0,
      I3 => a(6),
      I4 => a(7),
      I5 => g13_b31_n_0,
      O => \spo[31]_INST_0_i_1_n_0\
    );
\spo[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0A0A0A0C0A0C0"
    )
        port map (
      I0 => g13_b31_n_0,
      I1 => g12_b31_n_0,
      I2 => a(8),
      I3 => a(7),
      I4 => g11_b31_n_0,
      I5 => a(6),
      O => \spo[31]_INST_0_i_2_n_0\
    );
\spo[31]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003808"
    )
        port map (
      I0 => g1_b31_n_0,
      I1 => a(6),
      I2 => a(7),
      I3 => g2_b31_n_0,
      I4 => a(8),
      O => \spo[31]_INST_0_i_3_n_0\
    );
\spo[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_1_n_0\,
      I1 => \spo[3]_INST_0_i_2_n_0\,
      O => spo(3),
      S => a(10)
    );
\spo[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_3_n_0\,
      I1 => \spo[3]_INST_0_i_4_n_0\,
      I2 => a(9),
      I3 => \spo[3]_INST_0_i_5_n_0\,
      I4 => a(8),
      I5 => \spo[3]_INST_0_i_6_n_0\,
      O => \spo[3]_INST_0_i_1_n_0\
    );
\spo[3]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b3_n_0,
      I1 => g5_b3_n_0,
      O => \spo[3]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b3_n_0,
      I1 => g7_b3_n_0,
      O => \spo[3]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b3_n_0,
      I1 => g1_b3_n_0,
      O => \spo[3]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b3_n_0,
      I1 => g3_b3_n_0,
      O => \spo[3]_INST_0_i_13_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222E22"
    )
        port map (
      I0 => \spo[3]_INST_0_i_7_n_0\,
      I1 => a(8),
      I2 => a(7),
      I3 => g20_b3_n_0,
      I4 => a(6),
      I5 => a(9),
      O => \spo[3]_INST_0_i_2_n_0\
    );
\spo[3]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => a(7),
      I1 => g13_b3_n_0,
      I2 => a(6),
      I3 => g12_b3_n_0,
      O => \spo[3]_INST_0_i_3_n_0\
    );
\spo[3]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[3]_INST_0_i_8_n_0\,
      I1 => \spo[3]_INST_0_i_9_n_0\,
      O => \spo[3]_INST_0_i_4_n_0\,
      S => a(7)
    );
\spo[3]_INST_0_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[3]_INST_0_i_10_n_0\,
      I1 => \spo[3]_INST_0_i_11_n_0\,
      O => \spo[3]_INST_0_i_5_n_0\,
      S => a(7)
    );
\spo[3]_INST_0_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[3]_INST_0_i_12_n_0\,
      I1 => \spo[3]_INST_0_i_13_n_0\,
      O => \spo[3]_INST_0_i_6_n_0\,
      S => a(7)
    );
\spo[3]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8F3B8C0"
    )
        port map (
      I0 => g19_b3_n_0,
      I1 => a(7),
      I2 => g13_b3_n_0,
      I3 => a(6),
      I4 => g16_b3_n_0,
      O => \spo[3]_INST_0_i_7_n_0\
    );
\spo[3]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b3_n_0,
      I1 => g9_b3_n_0,
      O => \spo[3]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b3_n_0,
      I1 => g11_b3_n_0,
      O => \spo[3]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_1_n_0\,
      I1 => \spo[4]_INST_0_i_2_n_0\,
      O => spo(4),
      S => a(10)
    );
\spo[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[4]_INST_0_i_3_n_0\,
      I1 => \spo[4]_INST_0_i_4_n_0\,
      I2 => a(9),
      I3 => \spo[4]_INST_0_i_5_n_0\,
      I4 => a(8),
      I5 => \spo[4]_INST_0_i_6_n_0\,
      O => \spo[4]_INST_0_i_1_n_0\
    );
\spo[4]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b4_n_0,
      I1 => g5_b4_n_0,
      O => \spo[4]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[4]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b4_n_0,
      I1 => g7_b4_n_0,
      O => \spo[4]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[4]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b4_n_0,
      I1 => g1_b4_n_0,
      O => \spo[4]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[4]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b4_n_0,
      I1 => g3_b4_n_0,
      O => \spo[4]_INST_0_i_13_n_0\,
      S => a(6)
    );
\spo[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222E22"
    )
        port map (
      I0 => \spo[4]_INST_0_i_7_n_0\,
      I1 => a(8),
      I2 => a(7),
      I3 => g20_b4_n_0,
      I4 => a(6),
      I5 => a(9),
      O => \spo[4]_INST_0_i_2_n_0\
    );
\spo[4]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => g14_b4_n_0,
      I1 => a(7),
      I2 => g16_b6_n_0,
      I3 => a(6),
      I4 => g12_b4_n_0,
      O => \spo[4]_INST_0_i_3_n_0\
    );
\spo[4]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[4]_INST_0_i_8_n_0\,
      I1 => \spo[4]_INST_0_i_9_n_0\,
      O => \spo[4]_INST_0_i_4_n_0\,
      S => a(7)
    );
\spo[4]_INST_0_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[4]_INST_0_i_10_n_0\,
      I1 => \spo[4]_INST_0_i_11_n_0\,
      O => \spo[4]_INST_0_i_5_n_0\,
      S => a(7)
    );
\spo[4]_INST_0_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[4]_INST_0_i_12_n_0\,
      I1 => \spo[4]_INST_0_i_13_n_0\,
      O => \spo[4]_INST_0_i_6_n_0\,
      S => a(7)
    );
\spo[4]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => g19_b7_n_0,
      I1 => a(7),
      I2 => g16_b6_n_0,
      I3 => a(6),
      I4 => g14_b4_n_0,
      O => \spo[4]_INST_0_i_7_n_0\
    );
\spo[4]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b4_n_0,
      I1 => g9_b4_n_0,
      O => \spo[4]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[4]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b4_n_0,
      I1 => g11_b4_n_0,
      O => \spo[4]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_1_n_0\,
      I1 => \spo[5]_INST_0_i_2_n_0\,
      O => spo(5),
      S => a(10)
    );
\spo[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g17_b6__1_n_0\,
      I1 => \spo[5]_INST_0_i_3_n_0\,
      I2 => a(9),
      I3 => \spo[5]_INST_0_i_4_n_0\,
      I4 => a(8),
      I5 => \spo[5]_INST_0_i_5_n_0\,
      O => \spo[5]_INST_0_i_1_n_0\
    );
\spo[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222E22"
    )
        port map (
      I0 => \g17_b6__0_n_0\,
      I1 => a(8),
      I2 => a(7),
      I3 => g20_b5_n_0,
      I4 => a(6),
      I5 => a(9),
      O => \spo[5]_INST_0_i_2_n_0\
    );
\spo[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g11_b5_n_0,
      I1 => g10_b5_n_0,
      I2 => a(7),
      I3 => g9_b5_n_0,
      I4 => a(6),
      I5 => g8_b7_n_0,
      O => \spo[5]_INST_0_i_3_n_0\
    );
\spo[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g7_b7_n_0,
      I1 => g6_b11_n_0,
      I2 => a(7),
      I3 => g5_b5_n_0,
      I4 => a(6),
      I5 => g4_b5_n_0,
      O => \spo[5]_INST_0_i_4_n_0\
    );
\spo[5]_INST_0_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[5]_INST_0_i_6_n_0\,
      I1 => \spo[5]_INST_0_i_7_n_0\,
      O => \spo[5]_INST_0_i_5_n_0\,
      S => a(7)
    );
\spo[5]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b5_n_0,
      I1 => g1_b5_n_0,
      O => \spo[5]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[5]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b5_n_0,
      I1 => g3_b5_n_0,
      O => \spo[5]_INST_0_i_7_n_0\,
      S => a(6)
    );
\spo[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => g17_b6_n_0,
      I1 => a(8),
      I2 => \spo[15]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(10),
      I5 => \spo[6]_INST_0_i_1_n_0\,
      O => spo(6)
    );
\spo[6]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[6]_INST_0_i_2_n_0\,
      I1 => \spo[6]_INST_0_i_3_n_0\,
      O => \spo[6]_INST_0_i_1_n_0\,
      S => a(9)
    );
\spo[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[6]_INST_0_i_4_n_0\,
      I1 => \spo[6]_INST_0_i_5_n_0\,
      O => \spo[6]_INST_0_i_2_n_0\,
      S => a(8)
    );
\spo[6]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[6]_INST_0_i_6_n_0\,
      I1 => \spo[6]_INST_0_i_7_n_0\,
      O => \spo[6]_INST_0_i_3_n_0\,
      S => a(8)
    );
\spo[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g3_b14_n_0,
      I1 => g2_b14_n_0,
      I2 => a(7),
      I3 => g1_b6_n_0,
      I4 => a(6),
      I5 => g0_b7_n_0,
      O => \spo[6]_INST_0_i_4_n_0\
    );
\spo[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g7_b6_n_0,
      I1 => g6_b9_n_0,
      I2 => a(7),
      I3 => g5_b6_n_0,
      I4 => a(6),
      I5 => g4_b6_n_0,
      O => \spo[6]_INST_0_i_5_n_0\
    );
\spo[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g11_b6_n_0,
      I1 => g10_b6_n_0,
      I2 => a(7),
      I3 => g9_b6_n_0,
      I4 => a(6),
      I5 => g8_b6_n_0,
      O => \spo[6]_INST_0_i_6_n_0\
    );
\spo[6]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => a(7),
      I1 => g13_b10_n_0,
      I2 => a(6),
      I3 => g12_b6_n_0,
      O => \spo[6]_INST_0_i_7_n_0\
    );
\spo[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \spo[7]_INST_0_i_1_n_0\,
      I1 => a(10),
      I2 => \spo[7]_INST_0_i_2_n_0\,
      I3 => a(9),
      I4 => \spo[7]_INST_0_i_3_n_0\,
      O => spo(7)
    );
\spo[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303333BB30000088"
    )
        port map (
      I0 => g20_b15_n_0,
      I1 => a(8),
      I2 => g19_b7_n_0,
      I3 => a(6),
      I4 => a(7),
      I5 => g13_b10_n_0,
      O => \spo[7]_INST_0_i_1_n_0\
    );
\spo[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8FFFFCDC80000"
    )
        port map (
      I0 => a(7),
      I1 => g13_b10_n_0,
      I2 => a(6),
      I3 => g12_b7_n_0,
      I4 => a(8),
      I5 => \spo[7]_INST_0_i_4_n_0\,
      O => \spo[7]_INST_0_i_2_n_0\
    );
\spo[7]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_5_n_0\,
      I1 => \spo[7]_INST_0_i_6_n_0\,
      O => \spo[7]_INST_0_i_3_n_0\,
      S => a(8)
    );
\spo[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g11_b7_n_0,
      I1 => g10_b7_n_0,
      I2 => a(7),
      I3 => g9_b7_n_0,
      I4 => a(6),
      I5 => g8_b7_n_0,
      O => \spo[7]_INST_0_i_4_n_0\
    );
\spo[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g3_b9_n_0,
      I1 => g2_b9_n_0,
      I2 => a(7),
      I3 => g1_b9_n_0,
      I4 => a(6),
      I5 => g0_b7_n_0,
      O => \spo[7]_INST_0_i_5_n_0\
    );
\spo[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g7_b7_n_0,
      I1 => g6_b7_n_0,
      I2 => a(7),
      I3 => g5_b15_n_0,
      I4 => a(6),
      I5 => g4_b7_n_0,
      O => \spo[7]_INST_0_i_6_n_0\
    );
\spo[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F008F8F0F008080"
    )
        port map (
      I0 => \spo[8]_INST_0_i_1_n_0\,
      I1 => a(8),
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_2_n_0\,
      I4 => a(9),
      I5 => \spo[8]_INST_0_i_3_n_0\,
      O => spo(8)
    );
\spo[8]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => a(6),
      I1 => g20_b10_n_0,
      I2 => a(7),
      O => \spo[8]_INST_0_i_1_n_0\
    );
\spo[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => a(6),
      I1 => g12_b8_n_0,
      I2 => a(7),
      I3 => a(8),
      I4 => \spo[8]_INST_0_i_4_n_0\,
      O => \spo[8]_INST_0_i_2_n_0\
    );
\spo[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[10]_INST_0_i_5_n_0\,
      I1 => \spo[10]_INST_0_i_6_n_0\,
      I2 => a(8),
      I3 => \spo[10]_INST_0_i_7_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_5_n_0\,
      O => \spo[8]_INST_0_i_3_n_0\
    );
\spo[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g11_b8_n_0,
      I1 => g10_b8_n_0,
      I2 => a(7),
      I3 => g9_b10_n_0,
      I4 => a(6),
      I5 => g8_b8_n_0,
      O => \spo[8]_INST_0_i_4_n_0\
    );
\spo[8]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b8_n_0,
      I1 => g1_b8_n_0,
      O => \spo[8]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F008F8F0F008080"
    )
        port map (
      I0 => \spo[15]_INST_0_i_1_n_0\,
      I1 => a(8),
      I2 => a(10),
      I3 => \spo[9]_INST_0_i_1_n_0\,
      I4 => a(9),
      I5 => \spo[9]_INST_0_i_2_n_0\,
      O => spo(9)
    );
\spo[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => a(6),
      I1 => g12_b15_n_0,
      I2 => a(8),
      I3 => \spo[9]_INST_0_i_3_n_0\,
      I4 => a(7),
      I5 => \spo[9]_INST_0_i_4_n_0\,
      O => \spo[9]_INST_0_i_1_n_0\
    );
\spo[9]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[9]_INST_0_i_5_n_0\,
      I1 => \spo[9]_INST_0_i_6_n_0\,
      O => \spo[9]_INST_0_i_2_n_0\,
      S => a(8)
    );
\spo[9]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b9_n_0,
      I1 => g11_b9_n_0,
      O => \spo[9]_INST_0_i_3_n_0\,
      S => a(6)
    );
\spo[9]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b9_n_0,
      I1 => g9_b9_n_0,
      O => \spo[9]_INST_0_i_4_n_0\,
      S => a(6)
    );
\spo[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g3_b9_n_0,
      I1 => g2_b9_n_0,
      I2 => a(7),
      I3 => g1_b9_n_0,
      I4 => a(6),
      I5 => g0_b9_n_0,
      O => \spo[9]_INST_0_i_5_n_0\
    );
\spo[9]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g7_b9_n_0,
      I1 => g6_b9_n_0,
      I2 => a(7),
      I3 => g5_b9_n_0,
      I4 => a(6),
      I5 => g4_b9_n_0,
      O => \spo[9]_INST_0_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity imem is
  port (
    a : in STD_LOGIC_VECTOR ( 10 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of imem : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of imem : entity is "imem,dist_mem_gen_v8_0_10,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of imem : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of imem : entity is "dist_mem_gen_v8_0_10,Vivado 2016.2";
end imem;

architecture STRUCTURE of imem is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of U0 : label is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of U0 : label is "true";
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 11;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 2048;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_clk : integer;
  attribute c_has_clk of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "imem.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 32;
begin
U0: entity work.imem_dist_mem_gen_v8_0_10
     port map (
      a(10 downto 0) => a(10 downto 0),
      clk => '0',
      d(31 downto 0) => B"00000000000000000000000000000000",
      dpo(31 downto 0) => NLW_U0_dpo_UNCONNECTED(31 downto 0),
      dpra(10 downto 0) => B"00000000000",
      i_ce => '1',
      qdpo(31 downto 0) => NLW_U0_qdpo_UNCONNECTED(31 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(31 downto 0) => NLW_U0_qspo_UNCONNECTED(31 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(31 downto 0) => spo(31 downto 0),
      we => '0'
    );
end STRUCTURE;
