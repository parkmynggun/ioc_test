-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Sep  5 10:18:13 2025
-- Host        : user11-B70TV-AN5TB8W running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/user11/work/test_18/test_18.gen/sources_1/bd/soc_dht11/ip/soc_dht11_myip_dht11tap_0_8/soc_dht11_myip_dht11tap_0_8_sim_netlist.vhdl
-- Design      : soc_dht11_myip_dht11tap_0_8
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_dht11_myip_dht11tap_0_8_edge_detector_p is
  port (
    \temp_data__0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    count_usec_e_reg : out STD_LOGIC;
    \read_state_reg[1]\ : out STD_LOGIC;
    ff_cur_reg_0 : out STD_LOGIC;
    dht11_data : inout STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    dht11_data_0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \read_state_reg[0]\ : in STD_LOGIC;
    \read_state__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \read_state_reg[0]_0\ : in STD_LOGIC;
    \data_count_reg[0]\ : in STD_LOGIC;
    \data_count_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \read_state_reg[0]_1\ : in STD_LOGIC;
    \data_count_reg[0]_1\ : in STD_LOGIC;
    \next_state_reg[0]\ : in STD_LOGIC;
    \next_state_reg[0]_0\ : in STD_LOGIC;
    \next_state_reg[0]_1\ : in STD_LOGIC;
    \next_state_reg[0]_2\ : in STD_LOGIC;
    \next_state_reg[0]_3\ : in STD_LOGIC;
    \data_count_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \data_count_reg[5]_0\ : in STD_LOGIC;
    count_usec_e_reg_0 : in STD_LOGIC;
    count_usec_e_reg_1 : in STD_LOGIC;
    count_usec_e_reg_2 : in STD_LOGIC;
    count_usec_e_reg_3 : in STD_LOGIC;
    count_usec_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \next_state_reg[0]_4\ : in STD_LOGIC;
    \next_state_reg[0]_5\ : in STD_LOGIC;
    count_usec_e_reg_4 : in STD_LOGIC;
    count_usec_e_reg_5 : in STD_LOGIC;
    count_usec_e_reg_6 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_dht11_myip_dht11tap_0_8_edge_detector_p : entity is "edge_detector_p";
end soc_dht11_myip_dht11tap_0_8_edge_detector_p;

architecture STRUCTURE of soc_dht11_myip_dht11tap_0_8_edge_detector_p is
  signal count_usec_e2_out : STD_LOGIC;
  signal count_usec_e_i_3_n_0 : STD_LOGIC;
  signal count_usec_e_i_5_n_0 : STD_LOGIC;
  signal count_usec_e_i_7_n_0 : STD_LOGIC;
  signal count_usec_e_i_8_n_0 : STD_LOGIC;
  signal \data_count[5]_i_7_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_10_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_13_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_4_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_5_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_7_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_8_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of count_usec_e_i_8 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_count[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_count[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \next_state[5]_i_13\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \next_state[5]_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \temp_data[39]_i_1\ : label is "soft_lutpair0";
begin
count_usec_e_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => count_usec_e_reg_4,
      I1 => count_usec_e_i_3_n_0,
      I2 => count_usec_e_reg_5,
      I3 => count_usec_e_i_5_n_0,
      I4 => count_usec_e2_out,
      I5 => count_usec_e_reg_6,
      O => count_usec_e_reg
    );
count_usec_e_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888AA8AAAAAAAAA"
    )
        port map (
      I0 => Q(3),
      I1 => count_usec_e_reg_0,
      I2 => count_usec_e_reg_1,
      I3 => count_usec_e_reg_2,
      I4 => count_usec_e_reg_3,
      I5 => \next_state[5]_i_10_n_0\,
      O => count_usec_e_i_3_n_0
    );
count_usec_e_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888AA8AAAAAAAAA"
    )
        port map (
      I0 => Q(2),
      I1 => count_usec_e_reg_0,
      I2 => count_usec_e_reg_1,
      I3 => count_usec_e_reg_2,
      I4 => count_usec_e_reg_3,
      I5 => \next_state[5]_i_8_n_0\,
      O => count_usec_e_i_5_n_0
    );
count_usec_e_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => count_usec_e_i_7_n_0,
      I1 => s00_axi_aresetn,
      I2 => Q(4),
      O => count_usec_e2_out
    );
count_usec_e_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000030203023C"
    )
        port map (
      I0 => count_usec_e_i_8_n_0,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(5),
      I4 => Q(3),
      I5 => Q(2),
      O => count_usec_e_i_7_n_0
    );
count_usec_e_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000FB0"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => \read_state_reg[0]_0\,
      I3 => \read_state__0\(0),
      I4 => Q(3),
      O => count_usec_e_i_8_n_0
    );
\data_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_count[5]_i_7_n_0\,
      I1 => \data_count_reg[5]\(0),
      O => D(0)
    );
\data_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \data_count[5]_i_7_n_0\,
      I1 => \data_count_reg[5]\(1),
      I2 => \data_count_reg[5]\(0),
      O => D(1)
    );
\data_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \data_count[5]_i_7_n_0\,
      I1 => \data_count_reg[5]\(0),
      I2 => \data_count_reg[5]\(1),
      I3 => \data_count_reg[5]\(2),
      O => D(2)
    );
\data_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \data_count[5]_i_7_n_0\,
      I1 => \data_count_reg[5]\(1),
      I2 => \data_count_reg[5]\(0),
      I3 => \data_count_reg[5]\(2),
      I4 => \data_count_reg[5]\(3),
      O => D(3)
    );
\data_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \data_count[5]_i_7_n_0\,
      I1 => \data_count_reg[5]\(4),
      I2 => \data_count_reg[5]\(3),
      I3 => \data_count_reg[5]\(2),
      I4 => \data_count_reg[5]\(0),
      I5 => \data_count_reg[5]\(1),
      O => D(4)
    );
\data_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF10FFFFFF10"
    )
        port map (
      I0 => \data_count_reg[0]\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => \data_count_reg[0]_0\(0),
      I4 => \read_state_reg[0]_1\,
      I5 => \data_count_reg[0]_1\,
      O => E(0)
    );
\data_count[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => \data_count[5]_i_7_n_0\,
      I1 => \data_count_reg[5]_0\,
      I2 => \data_count_reg[5]\(4),
      I3 => \data_count_reg[5]\(5),
      O => D(5)
    );
\data_count[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001F0000000000"
    )
        port map (
      I0 => \data_count_reg[5]\(3),
      I1 => \data_count_reg[5]\(4),
      I2 => \data_count_reg[5]\(5),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => Q(5),
      O => \data_count[5]_i_7_n_0\
    );
dht11_data_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => dht11_data_0,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => dht11_data
    );
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => dht11_data,
      Q => p_0_in(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(1),
      Q => p_0_in(0)
    );
\next_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => \next_state[5]_i_3_n_0\,
      I2 => \next_state[5]_i_4_n_0\,
      I3 => \next_state[5]_i_5_n_0\,
      I4 => \next_state_reg[0]\,
      I5 => \next_state[5]_i_7_n_0\,
      O => \state_reg[2]\(0)
    );
\next_state[5]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      O => \next_state[5]_i_10_n_0\
    );
\next_state[5]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => \read_state_reg[0]_0\,
      I3 => \read_state__0\(0),
      O => \next_state[5]_i_13_n_0\
    );
\next_state[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBFFFFBABBFFFF"
    )
        port map (
      I0 => \next_state[5]_i_8_n_0\,
      I1 => count_usec_e_reg_3,
      I2 => count_usec_e_reg_2,
      I3 => count_usec_e_reg_1,
      I4 => \next_state_reg[0]_1\,
      I5 => count_usec_reg(0),
      O => \next_state[5]_i_3_n_0\
    );
\next_state[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F88888FFFFFFFF"
    )
        port map (
      I0 => \next_state_reg[0]_4\,
      I1 => Q(1),
      I2 => Q(4),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \next_state_reg[0]_5\,
      O => \next_state[5]_i_4_n_0\
    );
\next_state[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8AAAAA8AA"
    )
        port map (
      I0 => Q(3),
      I1 => \next_state[5]_i_10_n_0\,
      I2 => count_usec_e_reg_0,
      I3 => count_usec_e_reg_1,
      I4 => count_usec_e_reg_2,
      I5 => count_usec_e_reg_3,
      O => \next_state[5]_i_5_n_0\
    );
\next_state[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555FDDDDDDD"
    )
        port map (
      I0 => Q(5),
      I1 => \next_state[5]_i_13_n_0\,
      I2 => \next_state_reg[0]_0\,
      I3 => \next_state_reg[0]_1\,
      I4 => \next_state_reg[0]_2\,
      I5 => \next_state_reg[0]_3\,
      O => \next_state[5]_i_7_n_0\
    );
\next_state[5]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      O => \next_state[5]_i_8_n_0\
    );
\read_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8FCF8F0F0F0F0"
    )
        port map (
      I0 => \read_state_reg[0]_1\,
      I1 => \read_state_reg[0]_0\,
      I2 => \read_state__0\(0),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \read_state_reg[0]\,
      O => \read_state_reg[1]\
    );
\read_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FFDF08000800"
    )
        port map (
      I0 => \read_state_reg[0]\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => \read_state__0\(0),
      I4 => \read_state_reg[0]_1\,
      I5 => \read_state_reg[0]_0\,
      O => ff_cur_reg_0
    );
\temp_data[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => \read_state_reg[0]\,
      I3 => \read_state__0\(0),
      I4 => \read_state_reg[0]_0\,
      O => \temp_data__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_dht11_myip_dht11tap_0_8_edge_detector_p_0 is
  port (
    s00_axi_aresetn_0 : out STD_LOGIC;
    ff_old_reg_0 : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[21]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_div_100 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    count_usec_reg_0_sp_1 : in STD_LOGIC;
    count_usec_reg : in STD_LOGIC_VECTOR ( 21 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_dht11_myip_dht11tap_0_8_edge_detector_p_0 : entity is "edge_detector_p";
end soc_dht11_myip_dht11tap_0_8_edge_detector_p_0;

architecture STRUCTURE of soc_dht11_myip_dht11tap_0_8_edge_detector_p_0 is
  signal count_usec1 : STD_LOGIC;
  signal \count_usec[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec[0]_i_6_n_0\ : STD_LOGIC;
  signal \count_usec[0]_i_7_n_0\ : STD_LOGIC;
  signal \count_usec[12]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[12]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[12]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[12]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec[16]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[16]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[16]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[16]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec[20]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[20]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[4]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[4]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[4]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[8]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[8]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[8]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_usec_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_usec_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_usec_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_usec_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_usec_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_usec_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_usec_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_usec_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_usec_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal count_usec_reg_0_sn_1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  signal \NLW_count_usec_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_usec_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_usec_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \count_usec_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_usec_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_usec_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_usec_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_usec_reg[8]_i_1\ : label is 11;
begin
  count_usec_reg_0_sn_1 <= count_usec_reg_0_sp_1;
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
\count_usec[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => count_usec_reg_0_sn_1,
      O => ff_old_reg_0
    );
\count_usec[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => count_usec_reg_0_sn_1,
      O => count_usec1
    );
\count_usec[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(3),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[0]_i_4_n_0\
    );
\count_usec[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(2),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[0]_i_5_n_0\
    );
\count_usec[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(1),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[0]_i_6_n_0\
    );
\count_usec[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC4C"
    )
        port map (
      I0 => count_usec_reg(0),
      I1 => count_usec_reg_0_sn_1,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \count_usec[0]_i_7_n_0\
    );
\count_usec[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(15),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[12]_i_2_n_0\
    );
\count_usec[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(14),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[12]_i_3_n_0\
    );
\count_usec[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(13),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[12]_i_4_n_0\
    );
\count_usec[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(12),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[12]_i_5_n_0\
    );
\count_usec[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(19),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[16]_i_2_n_0\
    );
\count_usec[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(18),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[16]_i_3_n_0\
    );
\count_usec[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(17),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[16]_i_4_n_0\
    );
\count_usec[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(16),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[16]_i_5_n_0\
    );
\count_usec[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(21),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[20]_i_2_n_0\
    );
\count_usec[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(20),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[20]_i_3_n_0\
    );
\count_usec[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(7),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[4]_i_2_n_0\
    );
\count_usec[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(6),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[4]_i_3_n_0\
    );
\count_usec[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(5),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[4]_i_4_n_0\
    );
\count_usec[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(4),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[4]_i_5_n_0\
    );
\count_usec[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(11),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[8]_i_2_n_0\
    );
\count_usec[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(10),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[8]_i_3_n_0\
    );
\count_usec[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(9),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[8]_i_4_n_0\
    );
\count_usec[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(8),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[8]_i_5_n_0\
    );
\count_usec_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_usec_reg[0]_i_2_n_0\,
      CO(2) => \count_usec_reg[0]_i_2_n_1\,
      CO(1) => \count_usec_reg[0]_i_2_n_2\,
      CO(0) => \count_usec_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => count_usec1,
      O(3 downto 0) => O(3 downto 0),
      S(3) => \count_usec[0]_i_4_n_0\,
      S(2) => \count_usec[0]_i_5_n_0\,
      S(1) => \count_usec[0]_i_6_n_0\,
      S(0) => \count_usec[0]_i_7_n_0\
    );
\count_usec_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[8]_i_1_n_0\,
      CO(3) => \count_usec_reg[12]_i_1_n_0\,
      CO(2) => \count_usec_reg[12]_i_1_n_1\,
      CO(1) => \count_usec_reg[12]_i_1_n_2\,
      CO(0) => \count_usec_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_usec_reg[15]\(3 downto 0),
      S(3) => \count_usec[12]_i_2_n_0\,
      S(2) => \count_usec[12]_i_3_n_0\,
      S(1) => \count_usec[12]_i_4_n_0\,
      S(0) => \count_usec[12]_i_5_n_0\
    );
\count_usec_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[12]_i_1_n_0\,
      CO(3) => \count_usec_reg[16]_i_1_n_0\,
      CO(2) => \count_usec_reg[16]_i_1_n_1\,
      CO(1) => \count_usec_reg[16]_i_1_n_2\,
      CO(0) => \count_usec_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_usec_reg[19]\(3 downto 0),
      S(3) => \count_usec[16]_i_2_n_0\,
      S(2) => \count_usec[16]_i_3_n_0\,
      S(1) => \count_usec[16]_i_4_n_0\,
      S(0) => \count_usec[16]_i_5_n_0\
    );
\count_usec_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[16]_i_1_n_0\,
      CO(3 downto 1) => \NLW_count_usec_reg[20]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_usec_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_usec_reg[20]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \count_usec_reg[21]\(1 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \count_usec[20]_i_2_n_0\,
      S(0) => \count_usec[20]_i_3_n_0\
    );
\count_usec_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[0]_i_2_n_0\,
      CO(3) => \count_usec_reg[4]_i_1_n_0\,
      CO(2) => \count_usec_reg[4]_i_1_n_1\,
      CO(1) => \count_usec_reg[4]_i_1_n_2\,
      CO(0) => \count_usec_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_usec_reg[7]\(3 downto 0),
      S(3) => \count_usec[4]_i_2_n_0\,
      S(2) => \count_usec[4]_i_3_n_0\,
      S(1) => \count_usec[4]_i_4_n_0\,
      S(0) => \count_usec[4]_i_5_n_0\
    );
\count_usec_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[4]_i_1_n_0\,
      CO(3) => \count_usec_reg[8]_i_1_n_0\,
      CO(2) => \count_usec_reg[8]_i_1_n_1\,
      CO(1) => \count_usec_reg[8]_i_1_n_2\,
      CO(0) => \count_usec_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_usec_reg[11]\(3 downto 0),
      S(3) => \count_usec[8]_i_2_n_0\,
      S(2) => \count_usec[8]_i_3_n_0\,
      S(1) => \count_usec[8]_i_4_n_0\,
      S(0) => \count_usec[8]_i_5_n_0\
    );
\data_count[5]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^s00_axi_aresetn_0\
    );
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => clk_div_100,
      Q => p_0_in(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in(1),
      Q => p_0_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_dht11_myip_dht11tap_0_8_clock_div_100 is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[21]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    count_usec_reg_0_sp_1 : in STD_LOGIC;
    count_usec_reg : in STD_LOGIC_VECTOR ( 21 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_dht11_myip_dht11tap_0_8_clock_div_100 : entity is "clock_div_100";
end soc_dht11_myip_dht11tap_0_8_clock_div_100;

architecture STRUCTURE of soc_dht11_myip_dht11tap_0_8_clock_div_100 is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_div_100 : STD_LOGIC;
  signal clk_div_100_i_1_n_0 : STD_LOGIC;
  signal clk_div_100_i_2_n_0 : STD_LOGIC;
  signal cnt_sysclk_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal count_usec_reg_0_sn_1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_sysclk[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_sysclk[2]_i_1\ : label is "soft_lutpair4";
begin
  AR(0) <= \^ar\(0);
  count_usec_reg_0_sn_1 <= count_usec_reg_0_sp_1;
cl_ed: entity work.soc_dht11_myip_dht11tap_0_8_edge_detector_p_0
     port map (
      O(3 downto 0) => O(3 downto 0),
      clk_div_100 => clk_div_100,
      count_usec_reg(21 downto 0) => count_usec_reg(21 downto 0),
      \count_usec_reg[11]\(3 downto 0) => \count_usec_reg[11]\(3 downto 0),
      \count_usec_reg[15]\(3 downto 0) => \count_usec_reg[15]\(3 downto 0),
      \count_usec_reg[19]\(3 downto 0) => \count_usec_reg[19]\(3 downto 0),
      \count_usec_reg[21]\(1 downto 0) => \count_usec_reg[21]\(1 downto 0),
      \count_usec_reg[7]\(3 downto 0) => \count_usec_reg[7]\(3 downto 0),
      count_usec_reg_0_sp_1 => count_usec_reg_0_sn_1,
      ff_old_reg_0 => ff_old_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => \^ar\(0)
    );
clk_div_100_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clk_div_100_i_2_n_0,
      I1 => clk_div_100,
      O => clk_div_100_i_1_n_0
    );
clk_div_100_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => cnt_sysclk_reg(5),
      I1 => cnt_sysclk_reg(4),
      I2 => cnt_sysclk_reg(1),
      I3 => cnt_sysclk_reg(0),
      I4 => cnt_sysclk_reg(3),
      I5 => cnt_sysclk_reg(2),
      O => clk_div_100_i_2_n_0
    );
clk_div_100_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => clk_div_100_i_1_n_0,
      Q => clk_div_100
    );
\cnt_sysclk[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010F0F0F0F0F0F"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => cnt_sysclk_reg(3),
      I2 => cnt_sysclk_reg(0),
      I3 => cnt_sysclk_reg(1),
      I4 => cnt_sysclk_reg(4),
      I5 => cnt_sysclk_reg(5),
      O => p_0_in(0)
    );
\cnt_sysclk[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0666"
    )
        port map (
      I0 => cnt_sysclk_reg(0),
      I1 => cnt_sysclk_reg(1),
      I2 => cnt_sysclk_reg(4),
      I3 => cnt_sysclk_reg(5),
      O => p_0_in(1)
    );
\cnt_sysclk[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"006A6A6A"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => cnt_sysclk_reg(0),
      I2 => cnt_sysclk_reg(1),
      I3 => cnt_sysclk_reg(4),
      I4 => cnt_sysclk_reg(5),
      O => p_0_in(2)
    );
\cnt_sysclk[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00006CCC6CCC6CCC"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => cnt_sysclk_reg(3),
      I2 => cnt_sysclk_reg(0),
      I3 => cnt_sysclk_reg(1),
      I4 => cnt_sysclk_reg(4),
      I5 => cnt_sysclk_reg(5),
      O => p_0_in(3)
    );
\cnt_sysclk[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000180007FFF8000"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => cnt_sysclk_reg(3),
      I2 => cnt_sysclk_reg(0),
      I3 => cnt_sysclk_reg(1),
      I4 => cnt_sysclk_reg(4),
      I5 => cnt_sysclk_reg(5),
      O => p_0_in(4)
    );
\cnt_sysclk[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40000002AAAAAAAA"
    )
        port map (
      I0 => cnt_sysclk_reg(5),
      I1 => cnt_sysclk_reg(2),
      I2 => cnt_sysclk_reg(1),
      I3 => cnt_sysclk_reg(0),
      I4 => cnt_sysclk_reg(3),
      I5 => cnt_sysclk_reg(4),
      O => p_0_in(5)
    );
\cnt_sysclk_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => p_0_in(0),
      Q => cnt_sysclk_reg(0)
    );
\cnt_sysclk_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => p_0_in(1),
      Q => cnt_sysclk_reg(1)
    );
\cnt_sysclk_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => p_0_in(2),
      Q => cnt_sysclk_reg(2)
    );
\cnt_sysclk_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => p_0_in(3),
      Q => cnt_sysclk_reg(3)
    );
\cnt_sysclk_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => p_0_in(4),
      Q => cnt_sysclk_reg(4)
    );
\cnt_sysclk_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => p_0_in(5),
      Q => cnt_sysclk_reg(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_dht11_myip_dht11tap_0_8_dht11_cntr is
  port (
    s00_axi_aresetn_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_count_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    dht11_data : inout STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_rdata_0_sp_1 : in STD_LOGIC;
    \s00_axi_rdata[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s00_axi_rdata[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_rdata_1_sp_1 : in STD_LOGIC;
    s00_axi_rdata_2_sp_1 : in STD_LOGIC;
    s00_axi_rdata_3_sp_1 : in STD_LOGIC;
    s00_axi_rdata_4_sp_1 : in STD_LOGIC;
    s00_axi_rdata_5_sp_1 : in STD_LOGIC;
    s00_axi_rdata_6_sp_1 : in STD_LOGIC;
    \s00_axi_rdata[7]_1\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_dht11_myip_dht11tap_0_8_dht11_cntr : entity is "dht11_cntr";
end soc_dht11_myip_dht11tap_0_8_dht11_cntr;

architecture STRUCTURE of soc_dht11_myip_dht11tap_0_8_dht11_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal count_usec_e_i_2_n_0 : STD_LOGIC;
  signal count_usec_e_i_4_n_0 : STD_LOGIC;
  signal count_usec_e_reg_n_0 : STD_LOGIC;
  signal count_usec_reg : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \data_count[5]_i_10_n_0\ : STD_LOGIC;
  signal \data_count[5]_i_11_n_0\ : STD_LOGIC;
  signal \data_count[5]_i_12_n_0\ : STD_LOGIC;
  signal \data_count[5]_i_13_n_0\ : STD_LOGIC;
  signal \data_count[5]_i_4_n_0\ : STD_LOGIC;
  signal \data_count[5]_i_5_n_0\ : STD_LOGIC;
  signal \data_count[5]_i_6_n_0\ : STD_LOGIC;
  signal \data_count[5]_i_8_n_0\ : STD_LOGIC;
  signal \data_count[5]_i_9_n_0\ : STD_LOGIC;
  signal \data_count__0\ : STD_LOGIC;
  signal \^data_count_reg[5]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal dht11_data_out_e_i_1_n_0 : STD_LOGIC;
  signal dht11_data_out_e_i_2_n_0 : STD_LOGIC;
  signal dht11_data_out_e_i_3_n_0 : STD_LOGIC;
  signal dht11_data_out_e_i_4_n_0 : STD_LOGIC;
  signal dht11_data_out_e_i_5_n_0 : STD_LOGIC;
  signal dht11_data_out_e_i_6_n_0 : STD_LOGIC;
  signal dht11_data_out_e_i_7_n_0 : STD_LOGIC;
  signal dht11_data_out_e_i_8_n_0 : STD_LOGIC;
  signal dht11_data_out_e_i_9_n_0 : STD_LOGIC;
  signal dht11_data_out_e_reg_n_0 : STD_LOGIC;
  signal dht_ed_n_10 : STD_LOGIC;
  signal dht_ed_n_11 : STD_LOGIC;
  signal dht_ed_n_3 : STD_LOGIC;
  signal dht_ed_n_4 : STD_LOGIC;
  signal dht_ed_n_5 : STD_LOGIC;
  signal dht_ed_n_6 : STD_LOGIC;
  signal dht_ed_n_7 : STD_LOGIC;
  signal dht_ed_n_8 : STD_LOGIC;
  signal dht_ed_n_9 : STD_LOGIC;
  signal humidity : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal humidity_0 : STD_LOGIC;
  signal \next_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \next_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_11_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_12_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_14_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_15_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_16_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_17_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_18_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_19_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_6_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_9_n_0\ : STD_LOGIC;
  signal \next_state__0\ : STD_LOGIC;
  signal \next_state_inferred__2/i__n_0\ : STD_LOGIC;
  signal \next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \read_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \read_state__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \read_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal s00_axi_rdata_0_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_1_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_2_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_3_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_4_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_5_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_6_sn_1 : STD_LOGIC;
  signal temp_data : STD_LOGIC_VECTOR ( 39 downto 16 );
  signal \temp_data__0\ : STD_LOGIC;
  signal \temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13_i_2_n_0\ : STD_LOGIC;
  signal \temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13_i_3_n_0\ : STD_LOGIC;
  signal \temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13_n_0\ : STD_LOGIC;
  signal \temp_data_reg[15]_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_14_n_0\ : STD_LOGIC;
  signal \temp_data_reg[30]_srl7_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_5_n_0\ : STD_LOGIC;
  signal \temp_data_reg[31]_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_6_n_0\ : STD_LOGIC;
  signal temp_data_reg_c_0_n_0 : STD_LOGIC;
  signal temp_data_reg_c_10_n_0 : STD_LOGIC;
  signal temp_data_reg_c_11_n_0 : STD_LOGIC;
  signal temp_data_reg_c_12_n_0 : STD_LOGIC;
  signal temp_data_reg_c_13_n_0 : STD_LOGIC;
  signal temp_data_reg_c_14_n_0 : STD_LOGIC;
  signal temp_data_reg_c_1_n_0 : STD_LOGIC;
  signal temp_data_reg_c_2_n_0 : STD_LOGIC;
  signal temp_data_reg_c_3_n_0 : STD_LOGIC;
  signal temp_data_reg_c_4_n_0 : STD_LOGIC;
  signal temp_data_reg_c_5_n_0 : STD_LOGIC;
  signal temp_data_reg_c_6_n_0 : STD_LOGIC;
  signal temp_data_reg_c_7_n_0 : STD_LOGIC;
  signal temp_data_reg_c_8_n_0 : STD_LOGIC;
  signal temp_data_reg_c_9_n_0 : STD_LOGIC;
  signal temp_data_reg_c_n_0 : STD_LOGIC;
  signal \temp_data_reg_gate__0_n_0\ : STD_LOGIC;
  signal temp_data_reg_gate_n_0 : STD_LOGIC;
  signal temperature : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal us_clk_n_1 : STD_LOGIC;
  signal us_clk_n_10 : STD_LOGIC;
  signal us_clk_n_11 : STD_LOGIC;
  signal us_clk_n_12 : STD_LOGIC;
  signal us_clk_n_13 : STD_LOGIC;
  signal us_clk_n_14 : STD_LOGIC;
  signal us_clk_n_15 : STD_LOGIC;
  signal us_clk_n_16 : STD_LOGIC;
  signal us_clk_n_17 : STD_LOGIC;
  signal us_clk_n_18 : STD_LOGIC;
  signal us_clk_n_19 : STD_LOGIC;
  signal us_clk_n_2 : STD_LOGIC;
  signal us_clk_n_20 : STD_LOGIC;
  signal us_clk_n_21 : STD_LOGIC;
  signal us_clk_n_22 : STD_LOGIC;
  signal us_clk_n_23 : STD_LOGIC;
  signal us_clk_n_3 : STD_LOGIC;
  signal us_clk_n_4 : STD_LOGIC;
  signal us_clk_n_5 : STD_LOGIC;
  signal us_clk_n_6 : STD_LOGIC;
  signal us_clk_n_7 : STD_LOGIC;
  signal us_clk_n_8 : STD_LOGIC;
  signal us_clk_n_9 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of count_usec_e_i_4 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_count[5]_i_12\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_count[5]_i_13\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_count[5]_i_9\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of dht11_data_out_e_i_4 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of dht11_data_out_e_i_5 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of dht11_data_out_e_i_6 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of dht11_data_out_e_i_8 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of dht11_data_out_e_i_9 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \next_state[0]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \next_state[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \next_state[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \next_state[4]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \next_state[5]_i_11\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \next_state[5]_i_15\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \next_state[5]_i_17\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \next_state[5]_i_18\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \next_state[5]_i_9\ : label is "soft_lutpair13";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \read_state_reg[0]\ : label is "S_WAIT_PEDGE:01,S_WAIT_NEDGE:10,";
  attribute FSM_ENCODED_STATES of \read_state_reg[1]\ : label is "S_WAIT_PEDGE:01,S_WAIT_NEDGE:10,";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13\ : label is "\inst/myip_dht11tap_slave_lite_v1_0_S00_AXI_inst/dht/temp_data_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13\ : label is "\inst/myip_dht11tap_slave_lite_v1_0_S00_AXI_inst/dht/temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13 ";
  attribute srl_bus_name of \temp_data_reg[30]_srl7_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_5\ : label is "\inst/myip_dht11tap_slave_lite_v1_0_S00_AXI_inst/dht/temp_data_reg ";
  attribute srl_name of \temp_data_reg[30]_srl7_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_5\ : label is "\inst/myip_dht11tap_slave_lite_v1_0_S00_AXI_inst/dht/temp_data_reg[30]_srl7_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_5 ";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
  \data_count_reg[5]_0\(5 downto 0) <= \^data_count_reg[5]_0\(5 downto 0);
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
  s00_axi_rdata_0_sn_1 <= s00_axi_rdata_0_sp_1;
  s00_axi_rdata_1_sn_1 <= s00_axi_rdata_1_sp_1;
  s00_axi_rdata_2_sn_1 <= s00_axi_rdata_2_sp_1;
  s00_axi_rdata_3_sn_1 <= s00_axi_rdata_3_sp_1;
  s00_axi_rdata_4_sn_1 <= s00_axi_rdata_4_sp_1;
  s00_axi_rdata_5_sn_1 <= s00_axi_rdata_5_sp_1;
  s00_axi_rdata_6_sn_1 <= s00_axi_rdata_6_sp_1;
count_usec_e_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555FFFF00000000"
    )
        port map (
      I0 => count_usec_reg(20),
      I1 => count_usec_reg(18),
      I2 => count_usec_reg(19),
      I3 => \next_state[5]_i_12_n_0\,
      I4 => count_usec_reg(21),
      I5 => \^q\(0),
      O => count_usec_e_i_2_n_0
    );
count_usec_e_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => dht11_data_out_e_i_2_n_0,
      I1 => \^q\(1),
      I2 => \read_state_reg_n_0_[1]\,
      I3 => \^q\(5),
      O => count_usec_e_i_4_n_0
    );
count_usec_e_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => dht_ed_n_9,
      Q => count_usec_e_reg_n_0,
      R => '0'
    );
\count_usec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_5,
      Q => count_usec_reg(0)
    );
\count_usec_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_11,
      Q => count_usec_reg(10)
    );
\count_usec_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_10,
      Q => count_usec_reg(11)
    );
\count_usec_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_17,
      Q => count_usec_reg(12)
    );
\count_usec_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_16,
      Q => count_usec_reg(13)
    );
\count_usec_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_15,
      Q => count_usec_reg(14)
    );
\count_usec_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_14,
      Q => count_usec_reg(15)
    );
\count_usec_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_21,
      Q => count_usec_reg(16)
    );
\count_usec_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_20,
      Q => count_usec_reg(17)
    );
\count_usec_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_19,
      Q => count_usec_reg(18)
    );
\count_usec_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_18,
      Q => count_usec_reg(19)
    );
\count_usec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_4,
      Q => count_usec_reg(1)
    );
\count_usec_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_23,
      Q => count_usec_reg(20)
    );
\count_usec_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_22,
      Q => count_usec_reg(21)
    );
\count_usec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_3,
      Q => count_usec_reg(2)
    );
\count_usec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_2,
      Q => count_usec_reg(3)
    );
\count_usec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_9,
      Q => count_usec_reg(4)
    );
\count_usec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_8,
      Q => count_usec_reg(5)
    );
\count_usec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_7,
      Q => count_usec_reg(6)
    );
\count_usec_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_6,
      Q => count_usec_reg(7)
    );
\count_usec_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_13,
      Q => count_usec_reg(8)
    );
\count_usec_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => us_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => us_clk_n_12,
      Q => count_usec_reg(9)
    );
\data_count[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01FFFFFF"
    )
        port map (
      I0 => \data_count[5]_i_12_n_0\,
      I1 => count_usec_reg(0),
      I2 => count_usec_reg(4),
      I3 => count_usec_reg(5),
      I4 => count_usec_reg(7),
      I5 => \data_count[5]_i_13_n_0\,
      O => \data_count[5]_i_10_n_0\
    );
\data_count[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAAAAAFAAAAAAA"
    )
        port map (
      I0 => dht11_data_out_e_i_7_n_0,
      I1 => count_usec_reg(6),
      I2 => count_usec_reg(8),
      I3 => count_usec_reg(10),
      I4 => count_usec_reg(9),
      I5 => count_usec_reg(7),
      O => \data_count[5]_i_11_n_0\
    );
\data_count[5]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => count_usec_reg(1),
      I1 => count_usec_reg(3),
      I2 => count_usec_reg(2),
      O => \data_count[5]_i_12_n_0\
    );
\data_count[5]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_usec_reg(9),
      I1 => count_usec_reg(10),
      O => \data_count[5]_i_13_n_0\
    );
\data_count[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \read_state_reg_n_0_[1]\,
      I1 => \read_state__0\(0),
      I2 => \read_state[1]_i_2_n_0\,
      O => \data_count[5]_i_4_n_0\
    );
\data_count[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBF333333333333"
    )
        port map (
      I0 => count_usec_reg(14),
      I1 => \data_count[5]_i_9_n_0\,
      I2 => \data_count[5]_i_10_n_0\,
      I3 => \data_count[5]_i_11_n_0\,
      I4 => count_usec_reg(15),
      I5 => count_usec_reg(16),
      O => \data_count[5]_i_5_n_0\
    );
\data_count[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(4),
      I3 => \^q\(5),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data_count[5]_i_6_n_0\
    );
\data_count[5]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^data_count_reg[5]_0\(3),
      I1 => \^data_count_reg[5]_0\(2),
      I2 => \^data_count_reg[5]_0\(0),
      I3 => \^data_count_reg[5]_0\(1),
      O => \data_count[5]_i_8_n_0\
    );
\data_count[5]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => count_usec_reg(20),
      I1 => count_usec_reg(19),
      I2 => count_usec_reg(18),
      I3 => count_usec_reg(21),
      I4 => count_usec_reg(17),
      O => \data_count[5]_i_9_n_0\
    );
\data_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \data_count__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => dht_ed_n_8,
      Q => \^data_count_reg[5]_0\(0)
    );
\data_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \data_count__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => dht_ed_n_7,
      Q => \^data_count_reg[5]_0\(1)
    );
\data_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \data_count__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => dht_ed_n_6,
      Q => \^data_count_reg[5]_0\(2)
    );
\data_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \data_count__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => dht_ed_n_5,
      Q => \^data_count_reg[5]_0\(3)
    );
\data_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \data_count__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => dht_ed_n_4,
      Q => \^data_count_reg[5]_0\(4)
    );
\data_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \data_count__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => dht_ed_n_3,
      Q => \^data_count_reg[5]_0\(5)
    );
dht11_data_out_e_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFF77FF00002200"
    )
        port map (
      I0 => \^q\(1),
      I1 => dht11_data_out_e_i_2_n_0,
      I2 => dht11_data_out_e_i_3_n_0,
      I3 => dht11_data_out_e_i_4_n_0,
      I4 => \^q\(0),
      I5 => dht11_data_out_e_reg_n_0,
      O => dht11_data_out_e_i_1_n_0
    );
dht11_data_out_e_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF777777777"
    )
        port map (
      I0 => dht11_data_out_e_i_5_n_0,
      I1 => \data_count[5]_i_9_n_0\,
      I2 => dht11_data_out_e_i_6_n_0,
      I3 => dht11_data_out_e_i_7_n_0,
      I4 => dht11_data_out_e_i_8_n_0,
      I5 => count_usec_reg(14),
      O => dht11_data_out_e_i_2_n_0
    );
dht11_data_out_e_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555FFFF55F7"
    )
        port map (
      I0 => count_usec_reg(21),
      I1 => \data_count[5]_i_11_n_0\,
      I2 => \next_state[5]_i_15_n_0\,
      I3 => count_usec_reg(17),
      I4 => dht11_data_out_e_i_9_n_0,
      I5 => count_usec_reg(20),
      O => dht11_data_out_e_i_3_n_0
    );
dht11_data_out_e_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(5),
      I3 => \^q\(4),
      O => dht11_data_out_e_i_4_n_0
    );
dht11_data_out_e_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_usec_reg(15),
      I1 => count_usec_reg(16),
      O => dht11_data_out_e_i_5_n_0
    );
dht11_data_out_e_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => count_usec_reg(10),
      I1 => count_usec_reg(9),
      I2 => count_usec_reg(8),
      I3 => count_usec_reg(7),
      O => dht11_data_out_e_i_6_n_0
    );
dht11_data_out_e_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => count_usec_reg(11),
      I1 => count_usec_reg(13),
      I2 => count_usec_reg(12),
      O => dht11_data_out_e_i_7_n_0
    );
dht11_data_out_e_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0000000"
    )
        port map (
      I0 => count_usec_reg(5),
      I1 => count_usec_reg(4),
      I2 => count_usec_reg(6),
      I3 => count_usec_reg(9),
      I4 => count_usec_reg(10),
      O => dht11_data_out_e_i_8_n_0
    );
dht11_data_out_e_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_usec_reg(18),
      I1 => count_usec_reg(19),
      O => dht11_data_out_e_i_9_n_0
    );
dht11_data_out_e_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => dht11_data_out_e_i_1_n_0,
      Q => dht11_data_out_e_reg_n_0
    );
dht_ed: entity work.soc_dht11_myip_dht11tap_0_8_edge_detector_p
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      D(5) => dht_ed_n_3,
      D(4) => dht_ed_n_4,
      D(3) => dht_ed_n_5,
      D(2) => dht_ed_n_6,
      D(1) => dht_ed_n_7,
      D(0) => dht_ed_n_8,
      E(0) => \data_count__0\,
      Q(5 downto 0) => \^q\(5 downto 0),
      count_usec_e_reg => dht_ed_n_9,
      count_usec_e_reg_0 => \next_state[5]_i_11_n_0\,
      count_usec_e_reg_1 => \data_count[5]_i_10_n_0\,
      count_usec_e_reg_2 => \data_count[5]_i_11_n_0\,
      count_usec_e_reg_3 => \next_state[5]_i_9_n_0\,
      count_usec_e_reg_4 => count_usec_e_i_2_n_0,
      count_usec_e_reg_5 => count_usec_e_i_4_n_0,
      count_usec_e_reg_6 => count_usec_e_reg_n_0,
      count_usec_reg(0) => count_usec_reg(14),
      \data_count_reg[0]\ => \data_count[5]_i_4_n_0\,
      \data_count_reg[0]_0\(0) => humidity_0,
      \data_count_reg[0]_1\ => \data_count[5]_i_6_n_0\,
      \data_count_reg[5]\(5 downto 0) => \^data_count_reg[5]_0\(5 downto 0),
      \data_count_reg[5]_0\ => \data_count[5]_i_8_n_0\,
      dht11_data => dht11_data,
      dht11_data_0 => dht11_data_out_e_reg_n_0,
      ff_cur_reg_0 => dht_ed_n_11,
      \next_state_reg[0]\ => \next_state[5]_i_6_n_0\,
      \next_state_reg[0]_0\ => \next_state[5]_i_14_n_0\,
      \next_state_reg[0]_1\ => \data_count[5]_i_9_n_0\,
      \next_state_reg[0]_2\ => \next_state[5]_i_15_n_0\,
      \next_state_reg[0]_3\ => \next_state[5]_i_16_n_0\,
      \next_state_reg[0]_4\ => dht11_data_out_e_i_2_n_0,
      \next_state_reg[0]_5\ => \next_state_inferred__2/i__n_0\,
      \read_state__0\(0) => \read_state__0\(0),
      \read_state_reg[0]\ => \read_state[1]_i_2_n_0\,
      \read_state_reg[0]_0\ => \read_state_reg_n_0_[1]\,
      \read_state_reg[0]_1\ => \data_count[5]_i_5_n_0\,
      \read_state_reg[1]\ => dht_ed_n_10,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \state_reg[2]\(0) => \next_state__0\,
      \temp_data__0\ => \temp_data__0\
    );
\humidity[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \^data_count_reg[5]_0\(3),
      I1 => \^data_count_reg[5]_0\(4),
      I2 => \^data_count_reg[5]_0\(5),
      I3 => \read_state[1]_i_2_n_0\,
      O => humidity_0
    );
\humidity_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => humidity_0,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(32),
      Q => humidity(0)
    );
\humidity_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => humidity_0,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(33),
      Q => humidity(1)
    );
\humidity_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => humidity_0,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(34),
      Q => humidity(2)
    );
\humidity_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => humidity_0,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(35),
      Q => humidity(3)
    );
\humidity_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => humidity_0,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(36),
      Q => humidity(4)
    );
\humidity_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => humidity_0,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(37),
      Q => humidity(5)
    );
\humidity_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => humidity_0,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(38),
      Q => humidity(6)
    );
\humidity_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => humidity_0,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(39),
      Q => humidity(7)
    );
\next_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55544454"
    )
        port map (
      I0 => \next_state[0]_i_2_n_0\,
      I1 => \next_state[4]_i_2_n_0\,
      I2 => \data_count[5]_i_5_n_0\,
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \next_state[0]_i_3_n_0\,
      O => \next_state[0]_i_1_n_0\
    );
\next_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF11110010"
    )
        port map (
      I0 => \next_state[0]_i_4_n_0\,
      I1 => \next_state[5]_i_11_n_0\,
      I2 => \data_count[5]_i_10_n_0\,
      I3 => \data_count[5]_i_11_n_0\,
      I4 => \next_state[5]_i_9_n_0\,
      I5 => dht11_data_out_e_i_4_n_0,
      O => \next_state[0]_i_2_n_0\
    );
\next_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \next_state[0]_i_3_n_0\
    );
\next_state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(1),
      I2 => \^q\(4),
      I3 => \^q\(3),
      O => \next_state[0]_i_4_n_0\
    );
\next_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \next_state[1]_i_1_n_0\
    );
\next_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \next_state[2]_i_1_n_0\
    );
\next_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(1),
      I2 => \next_state[3]_i_2_n_0\,
      I3 => \data_count[5]_i_5_n_0\,
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => \next_state[3]_i_1_n_0\
    );
\next_state[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => \next_state[3]_i_2_n_0\
    );
\next_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \data_count[5]_i_5_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(4),
      I4 => \next_state[4]_i_2_n_0\,
      O => \next_state[4]_i_1_n_0\
    );
\next_state[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(5),
      I2 => \^q\(1),
      O => \next_state[4]_i_2_n_0\
    );
\next_state[5]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D555"
    )
        port map (
      I0 => \data_count[5]_i_9_n_0\,
      I1 => count_usec_reg(14),
      I2 => count_usec_reg(15),
      I3 => count_usec_reg(16),
      O => \next_state[5]_i_11_n_0\
    );
\next_state[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBABABABABA"
    )
        port map (
      I0 => count_usec_reg(17),
      I1 => \next_state[5]_i_15_n_0\,
      I2 => dht11_data_out_e_i_7_n_0,
      I3 => count_usec_reg(6),
      I4 => count_usec_reg(8),
      I5 => dht11_data_out_e_i_6_n_0,
      O => \next_state[5]_i_12_n_0\
    );
\next_state[5]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777F777F777F7777"
    )
        port map (
      I0 => count_usec_reg(16),
      I1 => count_usec_reg(15),
      I2 => dht11_data_out_e_i_7_n_0,
      I3 => \next_state[5]_i_17_n_0\,
      I4 => \next_state[5]_i_18_n_0\,
      I5 => \next_state[5]_i_19_n_0\,
      O => \next_state[5]_i_14_n_0\
    );
\next_state[5]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => count_usec_reg(16),
      I1 => count_usec_reg(15),
      I2 => count_usec_reg(14),
      O => \next_state[5]_i_15_n_0\
    );
\next_state[5]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^data_count_reg[5]_0\(5),
      I1 => \^data_count_reg[5]_0\(4),
      I2 => \^data_count_reg[5]_0\(3),
      O => \next_state[5]_i_16_n_0\
    );
\next_state[5]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C080C000"
    )
        port map (
      I0 => count_usec_reg(7),
      I1 => count_usec_reg(9),
      I2 => count_usec_reg(10),
      I3 => count_usec_reg(8),
      I4 => count_usec_reg(6),
      O => \next_state[5]_i_17_n_0\
    );
\next_state[5]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => count_usec_reg(4),
      I1 => count_usec_reg(0),
      I2 => count_usec_reg(2),
      I3 => count_usec_reg(3),
      I4 => count_usec_reg(1),
      O => \next_state[5]_i_18_n_0\
    );
\next_state[5]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => count_usec_reg(10),
      I1 => count_usec_reg(9),
      I2 => count_usec_reg(7),
      I3 => count_usec_reg(5),
      O => \next_state[5]_i_19_n_0\
    );
\next_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(5),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \next_state[5]_i_2_n_0\
    );
\next_state[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555FFFFFFFFFFFF"
    )
        port map (
      I0 => count_usec_reg(20),
      I1 => count_usec_reg(18),
      I2 => count_usec_reg(19),
      I3 => \next_state[5]_i_12_n_0\,
      I4 => count_usec_reg(21),
      I5 => \^q\(0),
      O => \next_state[5]_i_6_n_0\
    );
\next_state[5]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_usec_reg(15),
      I1 => count_usec_reg(16),
      O => \next_state[5]_i_9_n_0\
    );
\next_state_inferred__2/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010116"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \next_state_inferred__2/i__n_0\
    );
\next_state_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \next_state__0\,
      D => \next_state[0]_i_1_n_0\,
      PRE => \^s00_axi_aresetn_0\,
      Q => \next_state_reg_n_0_[0]\
    );
\next_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \next_state__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \next_state[1]_i_1_n_0\,
      Q => \next_state_reg_n_0_[1]\
    );
\next_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \next_state__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \next_state[2]_i_1_n_0\,
      Q => \next_state_reg_n_0_[2]\
    );
\next_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \next_state__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \next_state[3]_i_1_n_0\,
      Q => \next_state_reg_n_0_[3]\
    );
\next_state_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \next_state__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \next_state[4]_i_1_n_0\,
      Q => \next_state_reg_n_0_[4]\
    );
\next_state_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \next_state__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \next_state[5]_i_2_n_0\,
      Q => \next_state_reg_n_0_[5]\
    );
\read_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(5),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(3),
      O => \read_state[1]_i_2_n_0\
    );
\read_state_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => dht_ed_n_10,
      PRE => \^s00_axi_aresetn_0\,
      Q => \read_state__0\(0)
    );
\read_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => dht_ed_n_11,
      Q => \read_state_reg_n_0_[1]\
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[0]_INST_0_i_1_n_0\,
      I1 => s00_axi_rdata_0_sn_1,
      O => s00_axi_rdata(0),
      S => sel0(2)
    );
\s00_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[7]\(0),
      I1 => \s00_axi_rdata[7]_0\(0),
      I2 => sel0(1),
      I3 => temperature(0),
      I4 => sel0(0),
      I5 => humidity(0),
      O => \s00_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      I1 => s00_axi_rdata_1_sn_1,
      O => s00_axi_rdata(1),
      S => sel0(2)
    );
\s00_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[7]\(1),
      I1 => \s00_axi_rdata[7]_0\(1),
      I2 => sel0(1),
      I3 => temperature(1),
      I4 => sel0(0),
      I5 => humidity(1),
      O => \s00_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      I1 => s00_axi_rdata_2_sn_1,
      O => s00_axi_rdata(2),
      S => sel0(2)
    );
\s00_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[7]\(2),
      I1 => \s00_axi_rdata[7]_0\(2),
      I2 => sel0(1),
      I3 => temperature(2),
      I4 => sel0(0),
      I5 => humidity(2),
      O => \s00_axi_rdata[2]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      I1 => s00_axi_rdata_3_sn_1,
      O => s00_axi_rdata(3),
      S => sel0(2)
    );
\s00_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[7]\(3),
      I1 => \s00_axi_rdata[7]_0\(3),
      I2 => sel0(1),
      I3 => temperature(3),
      I4 => sel0(0),
      I5 => humidity(3),
      O => \s00_axi_rdata[3]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      I1 => s00_axi_rdata_4_sn_1,
      O => s00_axi_rdata(4),
      S => sel0(2)
    );
\s00_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[7]\(4),
      I1 => \s00_axi_rdata[7]_0\(4),
      I2 => sel0(1),
      I3 => temperature(4),
      I4 => sel0(0),
      I5 => humidity(4),
      O => \s00_axi_rdata[4]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      I1 => s00_axi_rdata_5_sn_1,
      O => s00_axi_rdata(5),
      S => sel0(2)
    );
\s00_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[7]\(5),
      I1 => \s00_axi_rdata[7]_0\(5),
      I2 => sel0(1),
      I3 => temperature(5),
      I4 => sel0(0),
      I5 => humidity(5),
      O => \s00_axi_rdata[5]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      I1 => s00_axi_rdata_6_sn_1,
      O => s00_axi_rdata(6),
      S => sel0(2)
    );
\s00_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[7]\(6),
      I1 => \s00_axi_rdata[7]_0\(6),
      I2 => sel0(1),
      I3 => temperature(6),
      I4 => sel0(0),
      I5 => humidity(6),
      O => \s00_axi_rdata[6]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[7]_1\,
      O => s00_axi_rdata(7),
      S => sel0(2)
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[7]\(7),
      I1 => \s00_axi_rdata[7]_0\(7),
      I2 => sel0(1),
      I3 => temperature(7),
      I4 => sel0(0),
      I5 => humidity(7),
      O => \s00_axi_rdata[7]_INST_0_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \next_state_reg_n_0_[0]\,
      PRE => \^s00_axi_aresetn_0\,
      Q => \^q\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \next_state_reg_n_0_[1]\,
      Q => \^q\(1)
    );
\state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \next_state_reg_n_0_[2]\,
      Q => \^q\(2)
    );
\state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \next_state_reg_n_0_[3]\,
      Q => \^q\(3)
    );
\state_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \next_state_reg_n_0_[4]\,
      Q => \^q\(4)
    );
\state_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \next_state_reg_n_0_[5]\,
      Q => \^q\(5)
    );
\temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => \temp_data__0\,
      CLK => s00_axi_aclk,
      D => \temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13_i_1_n_0\,
      Q => \temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13_n_0\
    );
\temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88888880"
    )
        port map (
      I0 => count_usec_reg(4),
      I1 => count_usec_reg(5),
      I2 => count_usec_reg(1),
      I3 => count_usec_reg(3),
      I4 => count_usec_reg(2),
      I5 => \temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13_i_2_n_0\,
      O => \temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13_i_1_n_0\
    );
\temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => count_usec_reg(15),
      I1 => count_usec_reg(16),
      I2 => \data_count[5]_i_9_n_0\,
      I3 => \temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13_i_3_n_0\,
      I4 => count_usec_reg(10),
      I5 => count_usec_reg(14),
      O => \temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13_i_2_n_0\
    );
\temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => dht11_data_out_e_i_7_n_0,
      I1 => count_usec_reg(6),
      I2 => count_usec_reg(9),
      I3 => count_usec_reg(7),
      I4 => count_usec_reg(8),
      O => \temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13_i_3_n_0\
    );
\temp_data_reg[15]_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_14\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      D => \temp_data_reg[14]_srl15_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_13_n_0\,
      Q => \temp_data_reg[15]_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_14_n_0\,
      R => '0'
    );
\temp_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \temp_data_reg_gate__0_n_0\,
      Q => temp_data(16)
    );
\temp_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(16),
      Q => temp_data(17)
    );
\temp_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(17),
      Q => temp_data(18)
    );
\temp_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(18),
      Q => temp_data(19)
    );
\temp_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(19),
      Q => temp_data(20)
    );
\temp_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(20),
      Q => temp_data(21)
    );
\temp_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(21),
      Q => temp_data(22)
    );
\temp_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(22),
      Q => temp_data(23)
    );
\temp_data_reg[30]_srl7_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => \temp_data__0\,
      CLK => s00_axi_aclk,
      D => temp_data(23),
      Q => \temp_data_reg[30]_srl7_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_5_n_0\
    );
\temp_data_reg[31]_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_6\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      D => \temp_data_reg[30]_srl7_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_5_n_0\,
      Q => \temp_data_reg[31]_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_6_n_0\,
      R => '0'
    );
\temp_data_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data_reg_gate_n_0,
      Q => temp_data(32)
    );
\temp_data_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(32),
      Q => temp_data(33)
    );
\temp_data_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(33),
      Q => temp_data(34)
    );
\temp_data_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(34),
      Q => temp_data(35)
    );
\temp_data_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(35),
      Q => temp_data(36)
    );
\temp_data_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(36),
      Q => temp_data(37)
    );
\temp_data_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(37),
      Q => temp_data(38)
    );
\temp_data_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(38),
      Q => temp_data(39)
    );
temp_data_reg_c: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => '1',
      Q => temp_data_reg_c_n_0
    );
temp_data_reg_c_0: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data_reg_c_n_0,
      Q => temp_data_reg_c_0_n_0
    );
temp_data_reg_c_1: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data_reg_c_0_n_0,
      Q => temp_data_reg_c_1_n_0
    );
temp_data_reg_c_10: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data_reg_c_9_n_0,
      Q => temp_data_reg_c_10_n_0
    );
temp_data_reg_c_11: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data_reg_c_10_n_0,
      Q => temp_data_reg_c_11_n_0
    );
temp_data_reg_c_12: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data_reg_c_11_n_0,
      Q => temp_data_reg_c_12_n_0
    );
temp_data_reg_c_13: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data_reg_c_12_n_0,
      Q => temp_data_reg_c_13_n_0
    );
temp_data_reg_c_14: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data_reg_c_13_n_0,
      Q => temp_data_reg_c_14_n_0
    );
temp_data_reg_c_2: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data_reg_c_1_n_0,
      Q => temp_data_reg_c_2_n_0
    );
temp_data_reg_c_3: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data_reg_c_2_n_0,
      Q => temp_data_reg_c_3_n_0
    );
temp_data_reg_c_4: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data_reg_c_3_n_0,
      Q => temp_data_reg_c_4_n_0
    );
temp_data_reg_c_5: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data_reg_c_4_n_0,
      Q => temp_data_reg_c_5_n_0
    );
temp_data_reg_c_6: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data_reg_c_5_n_0,
      Q => temp_data_reg_c_6_n_0
    );
temp_data_reg_c_7: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data_reg_c_6_n_0,
      Q => temp_data_reg_c_7_n_0
    );
temp_data_reg_c_8: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data_reg_c_7_n_0,
      Q => temp_data_reg_c_8_n_0
    );
temp_data_reg_c_9: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data__0\,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data_reg_c_8_n_0,
      Q => temp_data_reg_c_9_n_0
    );
temp_data_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \temp_data_reg[31]_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_6_n_0\,
      I1 => temp_data_reg_c_6_n_0,
      O => temp_data_reg_gate_n_0
    );
\temp_data_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \temp_data_reg[15]_inst_myip_dht11tap_slave_lite_v1_0_S00_AXI_inst_dht_temp_data_reg_c_14_n_0\,
      I1 => temp_data_reg_c_14_n_0,
      O => \temp_data_reg_gate__0_n_0\
    );
\temperature_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => humidity_0,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(16),
      Q => temperature(0)
    );
\temperature_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => humidity_0,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(17),
      Q => temperature(1)
    );
\temperature_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => humidity_0,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(18),
      Q => temperature(2)
    );
\temperature_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => humidity_0,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(19),
      Q => temperature(3)
    );
\temperature_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => humidity_0,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(20),
      Q => temperature(4)
    );
\temperature_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => humidity_0,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(21),
      Q => temperature(5)
    );
\temperature_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => humidity_0,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(22),
      Q => temperature(6)
    );
\temperature_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => humidity_0,
      CLR => \^s00_axi_aresetn_0\,
      D => temp_data(23),
      Q => temperature(7)
    );
us_clk: entity work.soc_dht11_myip_dht11tap_0_8_clock_div_100
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      O(3) => us_clk_n_2,
      O(2) => us_clk_n_3,
      O(1) => us_clk_n_4,
      O(0) => us_clk_n_5,
      count_usec_reg(21 downto 0) => count_usec_reg(21 downto 0),
      \count_usec_reg[11]\(3) => us_clk_n_10,
      \count_usec_reg[11]\(2) => us_clk_n_11,
      \count_usec_reg[11]\(1) => us_clk_n_12,
      \count_usec_reg[11]\(0) => us_clk_n_13,
      \count_usec_reg[15]\(3) => us_clk_n_14,
      \count_usec_reg[15]\(2) => us_clk_n_15,
      \count_usec_reg[15]\(1) => us_clk_n_16,
      \count_usec_reg[15]\(0) => us_clk_n_17,
      \count_usec_reg[19]\(3) => us_clk_n_18,
      \count_usec_reg[19]\(2) => us_clk_n_19,
      \count_usec_reg[19]\(1) => us_clk_n_20,
      \count_usec_reg[19]\(0) => us_clk_n_21,
      \count_usec_reg[21]\(1) => us_clk_n_22,
      \count_usec_reg[21]\(0) => us_clk_n_23,
      \count_usec_reg[7]\(3) => us_clk_n_6,
      \count_usec_reg[7]\(2) => us_clk_n_7,
      \count_usec_reg[7]\(1) => us_clk_n_8,
      \count_usec_reg[7]\(0) => us_clk_n_9,
      count_usec_reg_0_sp_1 => count_usec_e_reg_n_0,
      ff_old_reg => us_clk_n_1,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_dht11_myip_dht11tap_0_8_myip_dht11tap_slave_lite_v1_0_S00_AXI is
  port (
    led : out STD_LOGIC_VECTOR ( 11 downto 0 );
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    dht11_data : inout STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_dht11_myip_dht11tap_0_8_myip_dht11tap_slave_lite_v1_0_S00_AXI : entity is "myip_dht11tap_slave_lite_v1_0_S00_AXI";
end soc_dht11_myip_dht11tap_0_8_myip_dht11tap_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of soc_dht11_myip_dht11tap_0_8_myip_dht11tap_slave_lite_v1_0_S00_AXI is
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_2_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal dht_n_0 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg5[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg6[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg6[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair14";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg2[31]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg2[31]_i_4\ : label is "soft_lutpair16";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF8888FFFF"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => s00_axi_rready,
      I2 => \^axi_arready_reg_0\,
      I3 => s00_axi_arvalid,
      I4 => state_read(1),
      I5 => state_read(0),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88880FFF0000"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => \^axi_rvalid_reg_0\,
      I3 => s00_axi_rready,
      I4 => state_read(1),
      I5 => state_read(0),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => state_read(0),
      R => dht_n_0
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => dht_n_0
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0F7FF"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => state_write(0),
      I4 => state_write(1),
      O => \FSM_sequential_state_write[0]_i_1_n_0\
    );
\FSM_sequential_state_write[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F0800"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => state_write(0),
      I4 => state_write(1),
      O => \FSM_sequential_state_write[1]_i_1_n_0\
    );
\FSM_sequential_state_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[0]_i_1_n_0\,
      Q => state_write(0),
      R => dht_n_0
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => state_write(1),
      R => dht_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => state_read(0),
      I3 => s00_axi_aresetn,
      I4 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => state_read(0),
      I3 => s00_axi_aresetn,
      I4 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => state_read(0),
      I3 => s00_axi_aresetn,
      I4 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(1),
      O => \axi_araddr[4]_i_2_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => '0'
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => '0'
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2A2FFAFAFAF"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => state_read(1),
      I3 => \^axi_rvalid_reg_0\,
      I4 => s00_axi_rready,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => dht_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => state_write(1),
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => state_write(0),
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => state_write(1),
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => state_write(0),
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => state_write(1),
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => state_write(0),
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => dht_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => dht_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => dht_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF4545"
    )
        port map (
      I0 => state_write(0),
      I1 => s00_axi_wvalid,
      I2 => state_write(1),
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_1_n_0,
      Q => \^axi_awready_reg_0\,
      R => dht_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF2AA22F2AAF2AA"
    )
        port map (
      I0 => \^s00_axi_bvalid\,
      I1 => s00_axi_bready,
      I2 => s00_axi_wvalid,
      I3 => state_write(1),
      I4 => \axi_awready0__0\,
      I5 => state_write(0),
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      O => \axi_awready0__0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => dht_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000FF00FF80FF80"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(0),
      I3 => \^axi_rvalid_reg_0\,
      I4 => s00_axi_rready,
      I5 => state_read(1),
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => dht_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => state_write(1),
      I1 => state_write(0),
      I2 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => dht_n_0
    );
dht: entity work.soc_dht11_myip_dht11tap_0_8_dht11_cntr
     port map (
      Q(5 downto 0) => led(5 downto 0),
      \data_count_reg[5]_0\(5 downto 0) => led(11 downto 6),
      dht11_data => dht11_data,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => dht_n_0,
      s00_axi_rdata(7 downto 0) => s00_axi_rdata(7 downto 0),
      \s00_axi_rdata[7]\(7 downto 0) => slv_reg3(7 downto 0),
      \s00_axi_rdata[7]_0\(7 downto 0) => slv_reg2(7 downto 0),
      \s00_axi_rdata[7]_1\ => \s00_axi_rdata[7]_INST_0_i_2_n_0\,
      s00_axi_rdata_0_sp_1 => \s00_axi_rdata[0]_INST_0_i_2_n_0\,
      s00_axi_rdata_1_sp_1 => \s00_axi_rdata[1]_INST_0_i_2_n_0\,
      s00_axi_rdata_2_sp_1 => \s00_axi_rdata[2]_INST_0_i_2_n_0\,
      s00_axi_rdata_3_sp_1 => \s00_axi_rdata[3]_INST_0_i_2_n_0\,
      s00_axi_rdata_4_sp_1 => \s00_axi_rdata[4]_INST_0_i_2_n_0\,
      s00_axi_rdata_5_sp_1 => \s00_axi_rdata[5]_INST_0_i_2_n_0\,
      s00_axi_rdata_6_sp_1 => \s00_axi_rdata[6]_INST_0_i_2_n_0\,
      sel0(2 downto 0) => sel0(2 downto 0)
    );
\s00_axi_rdata[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(0),
      I1 => slv_reg6(0),
      I2 => sel0(1),
      I3 => slv_reg5(0),
      I4 => sel0(0),
      I5 => slv_reg4(0),
      O => \s00_axi_rdata[0]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(10),
      I4 => sel0(0),
      I5 => slv_reg3(10),
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(10),
      I1 => slv_reg6(10),
      I2 => sel0(1),
      I3 => slv_reg5(10),
      I4 => sel0(0),
      I5 => slv_reg4(10),
      O => \s00_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(11),
      I4 => sel0(0),
      I5 => slv_reg3(11),
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(11),
      I1 => slv_reg6(11),
      I2 => sel0(1),
      I3 => slv_reg5(11),
      I4 => sel0(0),
      I5 => slv_reg4(11),
      O => \s00_axi_rdata[11]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[12]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(12),
      I4 => sel0(0),
      I5 => slv_reg3(12),
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(12),
      I1 => slv_reg6(12),
      I2 => sel0(1),
      I3 => slv_reg5(12),
      I4 => sel0(0),
      I5 => slv_reg4(12),
      O => \s00_axi_rdata[12]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[13]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(13),
      I4 => sel0(0),
      I5 => slv_reg3(13),
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(13),
      I1 => slv_reg6(13),
      I2 => sel0(1),
      I3 => slv_reg5(13),
      I4 => sel0(0),
      I5 => slv_reg4(13),
      O => \s00_axi_rdata[13]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(14),
      I4 => sel0(0),
      I5 => slv_reg3(14),
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(14),
      I1 => slv_reg6(14),
      I2 => sel0(1),
      I3 => slv_reg5(14),
      I4 => sel0(0),
      I5 => slv_reg4(14),
      O => \s00_axi_rdata[14]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(15),
      I4 => sel0(0),
      I5 => slv_reg3(15),
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(15),
      I1 => slv_reg6(15),
      I2 => sel0(1),
      I3 => slv_reg5(15),
      I4 => sel0(0),
      I5 => slv_reg4(15),
      O => \s00_axi_rdata[15]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[16]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(16),
      I4 => sel0(0),
      I5 => slv_reg3(16),
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(16),
      I1 => slv_reg6(16),
      I2 => sel0(1),
      I3 => slv_reg5(16),
      I4 => sel0(0),
      I5 => slv_reg4(16),
      O => \s00_axi_rdata[16]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[17]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(17),
      I4 => sel0(0),
      I5 => slv_reg3(17),
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(17),
      I1 => slv_reg6(17),
      I2 => sel0(1),
      I3 => slv_reg5(17),
      I4 => sel0(0),
      I5 => slv_reg4(17),
      O => \s00_axi_rdata[17]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[18]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(18),
      I4 => sel0(0),
      I5 => slv_reg3(18),
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(18),
      I1 => slv_reg6(18),
      I2 => sel0(1),
      I3 => slv_reg5(18),
      I4 => sel0(0),
      I5 => slv_reg4(18),
      O => \s00_axi_rdata[18]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[19]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(19),
      I4 => sel0(0),
      I5 => slv_reg3(19),
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(19),
      I1 => slv_reg6(19),
      I2 => sel0(1),
      I3 => slv_reg5(19),
      I4 => sel0(0),
      I5 => slv_reg4(19),
      O => \s00_axi_rdata[19]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(1),
      I1 => slv_reg6(1),
      I2 => sel0(1),
      I3 => slv_reg5(1),
      I4 => sel0(0),
      I5 => slv_reg4(1),
      O => \s00_axi_rdata[1]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(20),
      I4 => sel0(0),
      I5 => slv_reg3(20),
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(20),
      I1 => slv_reg6(20),
      I2 => sel0(1),
      I3 => slv_reg5(20),
      I4 => sel0(0),
      I5 => slv_reg4(20),
      O => \s00_axi_rdata[20]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[21]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(21),
      I4 => sel0(0),
      I5 => slv_reg3(21),
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(21),
      I1 => slv_reg6(21),
      I2 => sel0(1),
      I3 => slv_reg5(21),
      I4 => sel0(0),
      I5 => slv_reg4(21),
      O => \s00_axi_rdata[21]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(22),
      I4 => sel0(0),
      I5 => slv_reg3(22),
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(22),
      I1 => slv_reg6(22),
      I2 => sel0(1),
      I3 => slv_reg5(22),
      I4 => sel0(0),
      I5 => slv_reg4(22),
      O => \s00_axi_rdata[22]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(23),
      I4 => sel0(0),
      I5 => slv_reg3(23),
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(23),
      I1 => slv_reg6(23),
      I2 => sel0(1),
      I3 => slv_reg5(23),
      I4 => sel0(0),
      I5 => slv_reg4(23),
      O => \s00_axi_rdata[23]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(24),
      I4 => sel0(0),
      I5 => slv_reg3(24),
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(24),
      I1 => slv_reg6(24),
      I2 => sel0(1),
      I3 => slv_reg5(24),
      I4 => sel0(0),
      I5 => slv_reg4(24),
      O => \s00_axi_rdata[24]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(25),
      I4 => sel0(0),
      I5 => slv_reg3(25),
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(25),
      I1 => slv_reg6(25),
      I2 => sel0(1),
      I3 => slv_reg5(25),
      I4 => sel0(0),
      I5 => slv_reg4(25),
      O => \s00_axi_rdata[25]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(26),
      I4 => sel0(0),
      I5 => slv_reg3(26),
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(26),
      I1 => slv_reg6(26),
      I2 => sel0(1),
      I3 => slv_reg5(26),
      I4 => sel0(0),
      I5 => slv_reg4(26),
      O => \s00_axi_rdata[26]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(27),
      I4 => sel0(0),
      I5 => slv_reg3(27),
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(27),
      I1 => slv_reg6(27),
      I2 => sel0(1),
      I3 => slv_reg5(27),
      I4 => sel0(0),
      I5 => slv_reg4(27),
      O => \s00_axi_rdata[27]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(28),
      I4 => sel0(0),
      I5 => slv_reg3(28),
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(28),
      I1 => slv_reg6(28),
      I2 => sel0(1),
      I3 => slv_reg5(28),
      I4 => sel0(0),
      I5 => slv_reg4(28),
      O => \s00_axi_rdata[28]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(29),
      I4 => sel0(0),
      I5 => slv_reg3(29),
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(29),
      I1 => slv_reg6(29),
      I2 => sel0(1),
      I3 => slv_reg5(29),
      I4 => sel0(0),
      I5 => slv_reg4(29),
      O => \s00_axi_rdata[29]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(2),
      I1 => slv_reg6(2),
      I2 => sel0(1),
      I3 => slv_reg5(2),
      I4 => sel0(0),
      I5 => slv_reg4(2),
      O => \s00_axi_rdata[2]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(30),
      I4 => sel0(0),
      I5 => slv_reg3(30),
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(30),
      I1 => slv_reg6(30),
      I2 => sel0(1),
      I3 => slv_reg5(30),
      I4 => sel0(0),
      I5 => slv_reg4(30),
      O => \s00_axi_rdata[30]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(31),
      I4 => sel0(0),
      I5 => slv_reg3(31),
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(31),
      I1 => slv_reg6(31),
      I2 => sel0(1),
      I3 => slv_reg5(31),
      I4 => sel0(0),
      I5 => slv_reg4(31),
      O => \s00_axi_rdata[31]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(3),
      I1 => slv_reg6(3),
      I2 => sel0(1),
      I3 => slv_reg5(3),
      I4 => sel0(0),
      I5 => slv_reg4(3),
      O => \s00_axi_rdata[3]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(4),
      I1 => slv_reg6(4),
      I2 => sel0(1),
      I3 => slv_reg5(4),
      I4 => sel0(0),
      I5 => slv_reg4(4),
      O => \s00_axi_rdata[4]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(5),
      I1 => slv_reg6(5),
      I2 => sel0(1),
      I3 => slv_reg5(5),
      I4 => sel0(0),
      I5 => slv_reg4(5),
      O => \s00_axi_rdata[5]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(6),
      I1 => slv_reg6(6),
      I2 => sel0(1),
      I3 => slv_reg5(6),
      I4 => sel0(0),
      I5 => slv_reg4(6),
      O => \s00_axi_rdata[6]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(7),
      I1 => slv_reg6(7),
      I2 => sel0(1),
      I3 => slv_reg5(7),
      I4 => sel0(0),
      I5 => slv_reg4(7),
      O => \s00_axi_rdata[7]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(8),
      I4 => sel0(0),
      I5 => slv_reg3(8),
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(8),
      I1 => slv_reg6(8),
      I2 => sel0(1),
      I3 => slv_reg5(8),
      I4 => sel0(0),
      I5 => slv_reg4(8),
      O => \s00_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(9),
      I4 => sel0(0),
      I5 => slv_reg3(9),
      O => s00_axi_rdata(9)
    );
\s00_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(9),
      I1 => slv_reg6(9),
      I2 => sel0(1),
      I3 => slv_reg5(9),
      I4 => sel0(0),
      I5 => slv_reg4(9),
      O => \s00_axi_rdata[9]_INST_0_i_1_n_0\
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054040000"
    )
        port map (
      I0 => \slv_reg2[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_wvalid,
      I5 => \slv_reg2[31]_i_4_n_0\,
      O => \slv_reg2[31]_i_2_n_0\
    );
\slv_reg2[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg2[31]_i_3_n_0\
    );
\slv_reg2[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg2[31]_i_4_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => dht_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => dht_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => dht_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => dht_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => dht_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => dht_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => dht_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => dht_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => dht_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => dht_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => dht_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => dht_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => dht_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => dht_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => dht_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => dht_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => dht_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => dht_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => dht_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => dht_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => dht_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => dht_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => dht_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => dht_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => dht_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => dht_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => dht_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => dht_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => dht_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => dht_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => dht_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => dht_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404000000000000"
    )
        port map (
      I0 => \slv_reg2[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_wvalid,
      I5 => \slv_reg2[31]_i_4_n_0\,
      O => \slv_reg3[31]_i_2_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => dht_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => dht_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => dht_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => dht_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => dht_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => dht_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => dht_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => dht_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => dht_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => dht_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => dht_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => dht_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => dht_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => dht_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => dht_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => dht_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => dht_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => dht_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => dht_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => dht_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => dht_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => dht_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => dht_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => dht_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => dht_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => dht_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => dht_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => dht_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => dht_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => dht_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => dht_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => dht_n_0
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088808"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg2[31]_i_3_n_0\,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(1),
      I5 => \slv_reg2[31]_i_4_n_0\,
      O => \slv_reg4[31]_i_2_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg4(0),
      R => dht_n_0
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg4(10),
      R => dht_n_0
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg4(11),
      R => dht_n_0
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg4(12),
      R => dht_n_0
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg4(13),
      R => dht_n_0
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg4(14),
      R => dht_n_0
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg4(15),
      R => dht_n_0
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg4(16),
      R => dht_n_0
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg4(17),
      R => dht_n_0
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg4(18),
      R => dht_n_0
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg4(19),
      R => dht_n_0
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg4(1),
      R => dht_n_0
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg4(20),
      R => dht_n_0
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg4(21),
      R => dht_n_0
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg4(22),
      R => dht_n_0
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg4(23),
      R => dht_n_0
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg4(24),
      R => dht_n_0
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg4(25),
      R => dht_n_0
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg4(26),
      R => dht_n_0
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg4(27),
      R => dht_n_0
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg4(28),
      R => dht_n_0
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg4(29),
      R => dht_n_0
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg4(2),
      R => dht_n_0
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg4(30),
      R => dht_n_0
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg4(31),
      R => dht_n_0
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg4(3),
      R => dht_n_0
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg4(4),
      R => dht_n_0
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg4(5),
      R => dht_n_0
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg4(6),
      R => dht_n_0
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg4(7),
      R => dht_n_0
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg4(8),
      R => dht_n_0
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg4(9),
      R => dht_n_0
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg5[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg5[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg5[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008880800000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg2[31]_i_3_n_0\,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(1),
      I5 => \slv_reg2[31]_i_4_n_0\,
      O => \slv_reg5[31]_i_2_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg5[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg5(0),
      R => dht_n_0
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg5(10),
      R => dht_n_0
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg5(11),
      R => dht_n_0
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg5(12),
      R => dht_n_0
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg5(13),
      R => dht_n_0
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg5(14),
      R => dht_n_0
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg5(15),
      R => dht_n_0
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg5(16),
      R => dht_n_0
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg5(17),
      R => dht_n_0
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg5(18),
      R => dht_n_0
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg5(19),
      R => dht_n_0
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg5(1),
      R => dht_n_0
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg5(20),
      R => dht_n_0
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg5(21),
      R => dht_n_0
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg5(22),
      R => dht_n_0
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg5(23),
      R => dht_n_0
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg5(24),
      R => dht_n_0
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg5(25),
      R => dht_n_0
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg5(26),
      R => dht_n_0
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg5(27),
      R => dht_n_0
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg5(28),
      R => dht_n_0
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg5(29),
      R => dht_n_0
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg5(2),
      R => dht_n_0
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg5(30),
      R => dht_n_0
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg5(31),
      R => dht_n_0
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg5(3),
      R => dht_n_0
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg5(4),
      R => dht_n_0
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg5(5),
      R => dht_n_0
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg5(6),
      R => dht_n_0
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg5(7),
      R => dht_n_0
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg5(8),
      R => dht_n_0
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg5(9),
      R => dht_n_0
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg6[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg6[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg6[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A8080000"
    )
        port map (
      I0 => \slv_reg2[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_wvalid,
      I5 => \slv_reg2[31]_i_4_n_0\,
      O => \slv_reg6[31]_i_2_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg6[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg6(0),
      R => dht_n_0
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg6(10),
      R => dht_n_0
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg6(11),
      R => dht_n_0
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg6(12),
      R => dht_n_0
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg6(13),
      R => dht_n_0
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg6(14),
      R => dht_n_0
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg6(15),
      R => dht_n_0
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg6(16),
      R => dht_n_0
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg6(17),
      R => dht_n_0
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg6(18),
      R => dht_n_0
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg6(19),
      R => dht_n_0
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg6(1),
      R => dht_n_0
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg6(20),
      R => dht_n_0
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg6(21),
      R => dht_n_0
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg6(22),
      R => dht_n_0
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg6(23),
      R => dht_n_0
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg6(24),
      R => dht_n_0
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg6(25),
      R => dht_n_0
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg6(26),
      R => dht_n_0
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg6(27),
      R => dht_n_0
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg6(28),
      R => dht_n_0
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg6(29),
      R => dht_n_0
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg6(2),
      R => dht_n_0
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg6(30),
      R => dht_n_0
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg6(31),
      R => dht_n_0
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg6(3),
      R => dht_n_0
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg6(4),
      R => dht_n_0
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg6(5),
      R => dht_n_0
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg6(6),
      R => dht_n_0
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg6(7),
      R => dht_n_0
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg6(8),
      R => dht_n_0
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg6(9),
      R => dht_n_0
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg7[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg7[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg7[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808000000000000"
    )
        port map (
      I0 => \slv_reg2[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_wvalid,
      I5 => \slv_reg2[31]_i_4_n_0\,
      O => \slv_reg7[31]_i_2_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg7[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg7(0),
      R => dht_n_0
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => dht_n_0
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => dht_n_0
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => dht_n_0
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => dht_n_0
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => dht_n_0
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => dht_n_0
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => dht_n_0
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => dht_n_0
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => dht_n_0
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => dht_n_0
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => dht_n_0
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => dht_n_0
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => dht_n_0
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => dht_n_0
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => dht_n_0
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => dht_n_0
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => dht_n_0
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => dht_n_0
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => dht_n_0
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => dht_n_0
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => dht_n_0
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => dht_n_0
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => dht_n_0
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => dht_n_0
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => dht_n_0
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => dht_n_0
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => dht_n_0
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => dht_n_0
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => dht_n_0
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => dht_n_0
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => dht_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_dht11_myip_dht11tap_0_8_myip_dht11tap is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    \data_count_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    dht11_data : inout STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_dht11_myip_dht11tap_0_8_myip_dht11tap : entity is "myip_dht11tap";
end soc_dht11_myip_dht11tap_0_8_myip_dht11tap;

architecture STRUCTURE of soc_dht11_myip_dht11tap_0_8_myip_dht11tap is
begin
myip_dht11tap_slave_lite_v1_0_S00_AXI_inst: entity work.soc_dht11_myip_dht11tap_0_8_myip_dht11tap_slave_lite_v1_0_S00_AXI
     port map (
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      dht11_data => dht11_data,
      led(11 downto 6) => \data_count_reg[5]\(5 downto 0),
      led(5 downto 0) => Q(5 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_dht11_myip_dht11tap_0_8 is
  port (
    dht11_data : inout STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of soc_dht11_myip_dht11tap_0_8 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of soc_dht11_myip_dht11tap_0_8 : entity is "soc_dht11_myip_dht11tap_0_8,myip_dht11tap,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of soc_dht11_myip_dht11tap_0_8 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of soc_dht11_myip_dht11tap_0_8 : entity is "myip_dht11tap,Vivado 2024.2";
end soc_dht11_myip_dht11tap_0_8;

architecture STRUCTURE of soc_dht11_myip_dht11tap_0_8 is
  signal \<const0>\ : STD_LOGIC;
  signal \^led\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of s00_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN soc_dht11_s00_axi_aclk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_MODE of s00_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_MODE of s00_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN soc_dht11_s00_axi_aclk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  led(15) <= \<const0>\;
  led(14) <= \<const0>\;
  led(13) <= \<const0>\;
  led(12) <= \<const0>\;
  led(11 downto 0) <= \^led\(11 downto 0);
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.soc_dht11_myip_dht11tap_0_8_myip_dht11tap
     port map (
      Q(5 downto 0) => \^led\(5 downto 0),
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      \data_count_reg[5]\(5 downto 0) => \^led\(11 downto 6),
      dht11_data => dht11_data,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
