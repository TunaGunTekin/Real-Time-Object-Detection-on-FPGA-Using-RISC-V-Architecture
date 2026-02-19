-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Sat Jan 17 10:54:11 2026
-- Host        : tunagun running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/tuna-gun/GradProject/RISC-V_EYE/RISC-V_EYE_Pipelined_Core/RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ip/design_1_axi_master_adapter_0_0/design_1_axi_master_adapter_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_master_adapter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_master_adapter_0_0_axi_master_adapter is
  port (
    user_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wvalid_reg_0 : out STD_LOGIC;
    m_axi_awvalid_reg_0 : out STD_LOGIC;
    m_axi_arvalid_reg_0 : out STD_LOGIC;
    user_ready : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    user_we : in STD_LOGIC;
    user_req : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    user_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    user_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_master_adapter_0_0_axi_master_adapter : entity is "axi_master_adapter";
end design_1_axi_master_adapter_0_0_axi_master_adapter;

architecture STRUCTURE of design_1_axi_master_adapter_0_0_axi_master_adapter is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_araddr[31]_i_1_n_0\ : STD_LOGIC;
  signal m_axi_arvalid_i_1_n_0 : STD_LOGIC;
  signal m_axi_arvalid_i_2_n_0 : STD_LOGIC;
  signal m_axi_arvalid_i_3_n_0 : STD_LOGIC;
  signal \^m_axi_arvalid_reg_0\ : STD_LOGIC;
  signal \m_axi_awaddr[31]_i_1_n_0\ : STD_LOGIC;
  signal m_axi_awvalid_i_1_n_0 : STD_LOGIC;
  signal m_axi_awvalid_i_2_n_0 : STD_LOGIC;
  signal \^m_axi_awvalid_reg_0\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal m_axi_bready_i_1_n_0 : STD_LOGIC;
  signal m_axi_bready_i_2_n_0 : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal m_axi_rready_i_1_n_0 : STD_LOGIC;
  signal m_axi_rready_i_2_n_0 : STD_LOGIC;
  signal m_axi_wvalid_i_1_n_0 : STD_LOGIC;
  signal m_axi_wvalid_i_2_n_0 : STD_LOGIC;
  signal \^m_axi_wvalid_reg_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \user_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \^user_ready\ : STD_LOGIC;
  signal user_ready_i_1_n_0 : STD_LOGIC;
  signal user_ready_i_2_n_0 : STD_LOGIC;
  signal user_ready_i_3_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "IDLE:000,WRITE_RESP:010,READ_DATA:100,READ_ADDR:011,WRITE_ADDR:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "IDLE:000,WRITE_RESP:010,READ_DATA:100,READ_ADDR:011,WRITE_ADDR:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "IDLE:000,WRITE_RESP:010,READ_DATA:100,READ_ADDR:011,WRITE_ADDR:001";
  attribute SOFT_HLUTNM of m_axi_arvalid_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of m_axi_rready_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of user_ready_i_3 : label is "soft_lutpair1";
begin
  m_axi_arvalid_reg_0 <= \^m_axi_arvalid_reg_0\;
  m_axi_awvalid_reg_0 <= \^m_axi_awvalid_reg_0\;
  m_axi_bready <= \^m_axi_bready\;
  m_axi_rready <= \^m_axi_rready\;
  m_axi_wvalid_reg_0 <= \^m_axi_wvalid_reg_0\;
  user_ready <= \^user_ready\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4744477700330000"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => state(2),
      I2 => \FSM_sequential_state[2]_i_2_n_0\,
      I3 => state(1),
      I4 => \FSM_sequential_state[1]_i_3_n_0\,
      I5 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABF8A8ABABF8080"
    )
        port map (
      I0 => \state__0\(1),
      I1 => m_axi_rvalid,
      I2 => state(2),
      I3 => \FSM_sequential_state[2]_i_2_n_0\,
      I4 => state(1),
      I5 => \FSM_sequential_state[1]_i_3_n_0\,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => user_we,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      O => \state__0\(1)
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0BBFFFFB0BB0000"
    )
        port map (
      I0 => m_axi_wready,
      I1 => \^m_axi_wvalid_reg_0\,
      I2 => m_axi_awready,
      I3 => \^m_axi_awvalid_reg_0\,
      I4 => state(0),
      I5 => user_req,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3A303030"
    )
        port map (
      I0 => state(0),
      I1 => m_axi_rvalid,
      I2 => state(2),
      I3 => \FSM_sequential_state[2]_i_2_n_0\,
      I4 => state(1),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => m_axi_arready,
      I1 => \^m_axi_arvalid_reg_0\,
      I2 => state(0),
      I3 => m_axi_bvalid,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => reset
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => reset
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => reset
    );
\m_axi_araddr[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => user_req,
      I3 => user_we,
      I4 => state(1),
      O => \m_axi_araddr[31]_i_1_n_0\
    );
\m_axi_araddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(0),
      Q => m_axi_araddr(0),
      R => reset
    );
\m_axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(10),
      Q => m_axi_araddr(10),
      R => reset
    );
\m_axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(11),
      Q => m_axi_araddr(11),
      R => reset
    );
\m_axi_araddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(12),
      Q => m_axi_araddr(12),
      R => reset
    );
\m_axi_araddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(13),
      Q => m_axi_araddr(13),
      R => reset
    );
\m_axi_araddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(14),
      Q => m_axi_araddr(14),
      R => reset
    );
\m_axi_araddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(15),
      Q => m_axi_araddr(15),
      R => reset
    );
\m_axi_araddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(16),
      Q => m_axi_araddr(16),
      R => reset
    );
\m_axi_araddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(17),
      Q => m_axi_araddr(17),
      R => reset
    );
\m_axi_araddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(18),
      Q => m_axi_araddr(18),
      R => reset
    );
\m_axi_araddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(19),
      Q => m_axi_araddr(19),
      R => reset
    );
\m_axi_araddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(1),
      Q => m_axi_araddr(1),
      R => reset
    );
\m_axi_araddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(20),
      Q => m_axi_araddr(20),
      R => reset
    );
\m_axi_araddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(21),
      Q => m_axi_araddr(21),
      R => reset
    );
\m_axi_araddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(22),
      Q => m_axi_araddr(22),
      R => reset
    );
\m_axi_araddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(23),
      Q => m_axi_araddr(23),
      R => reset
    );
\m_axi_araddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(24),
      Q => m_axi_araddr(24),
      R => reset
    );
\m_axi_araddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(25),
      Q => m_axi_araddr(25),
      R => reset
    );
\m_axi_araddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(26),
      Q => m_axi_araddr(26),
      R => reset
    );
\m_axi_araddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(27),
      Q => m_axi_araddr(27),
      R => reset
    );
\m_axi_araddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(28),
      Q => m_axi_araddr(28),
      R => reset
    );
\m_axi_araddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(29),
      Q => m_axi_araddr(29),
      R => reset
    );
\m_axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(2),
      Q => m_axi_araddr(2),
      R => reset
    );
\m_axi_araddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(30),
      Q => m_axi_araddr(30),
      R => reset
    );
\m_axi_araddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(31),
      Q => m_axi_araddr(31),
      R => reset
    );
\m_axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(3),
      Q => m_axi_araddr(3),
      R => reset
    );
\m_axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(4),
      Q => m_axi_araddr(4),
      R => reset
    );
\m_axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(5),
      Q => m_axi_araddr(5),
      R => reset
    );
\m_axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(6),
      Q => m_axi_araddr(6),
      R => reset
    );
\m_axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(7),
      Q => m_axi_araddr(7),
      R => reset
    );
\m_axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(8),
      Q => m_axi_araddr(8),
      R => reset
    );
\m_axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      D => user_addr(9),
      Q => m_axi_araddr(9),
      R => reset
    );
m_axi_arvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7777778B000000"
    )
        port map (
      I0 => m_axi_arvalid_i_2_n_0,
      I1 => state(0),
      I2 => user_we,
      I3 => user_req,
      I4 => m_axi_arvalid_i_3_n_0,
      I5 => \^m_axi_arvalid_reg_0\,
      O => m_axi_arvalid_i_1_n_0
    );
m_axi_arvalid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => m_axi_arready,
      I3 => \^m_axi_arvalid_reg_0\,
      O => m_axi_arvalid_i_2_n_0
    );
m_axi_arvalid_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      O => m_axi_arvalid_i_3_n_0
    );
m_axi_arvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_axi_arvalid_i_1_n_0,
      Q => \^m_axi_arvalid_reg_0\,
      R => reset
    );
\m_axi_awaddr[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => user_req,
      I3 => user_we,
      I4 => state(1),
      O => \m_axi_awaddr[31]_i_1_n_0\
    );
\m_axi_awaddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(0),
      Q => m_axi_awaddr(0),
      R => reset
    );
\m_axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(10),
      Q => m_axi_awaddr(10),
      R => reset
    );
\m_axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(11),
      Q => m_axi_awaddr(11),
      R => reset
    );
\m_axi_awaddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(12),
      Q => m_axi_awaddr(12),
      R => reset
    );
\m_axi_awaddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(13),
      Q => m_axi_awaddr(13),
      R => reset
    );
\m_axi_awaddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(14),
      Q => m_axi_awaddr(14),
      R => reset
    );
\m_axi_awaddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(15),
      Q => m_axi_awaddr(15),
      R => reset
    );
\m_axi_awaddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(16),
      Q => m_axi_awaddr(16),
      R => reset
    );
\m_axi_awaddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(17),
      Q => m_axi_awaddr(17),
      R => reset
    );
\m_axi_awaddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(18),
      Q => m_axi_awaddr(18),
      R => reset
    );
\m_axi_awaddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(19),
      Q => m_axi_awaddr(19),
      R => reset
    );
\m_axi_awaddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(1),
      Q => m_axi_awaddr(1),
      R => reset
    );
\m_axi_awaddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(20),
      Q => m_axi_awaddr(20),
      R => reset
    );
\m_axi_awaddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(21),
      Q => m_axi_awaddr(21),
      R => reset
    );
\m_axi_awaddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(22),
      Q => m_axi_awaddr(22),
      R => reset
    );
\m_axi_awaddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(23),
      Q => m_axi_awaddr(23),
      R => reset
    );
\m_axi_awaddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(24),
      Q => m_axi_awaddr(24),
      R => reset
    );
\m_axi_awaddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(25),
      Q => m_axi_awaddr(25),
      R => reset
    );
\m_axi_awaddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(26),
      Q => m_axi_awaddr(26),
      R => reset
    );
\m_axi_awaddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(27),
      Q => m_axi_awaddr(27),
      R => reset
    );
\m_axi_awaddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(28),
      Q => m_axi_awaddr(28),
      R => reset
    );
\m_axi_awaddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(29),
      Q => m_axi_awaddr(29),
      R => reset
    );
\m_axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(2),
      Q => m_axi_awaddr(2),
      R => reset
    );
\m_axi_awaddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(30),
      Q => m_axi_awaddr(30),
      R => reset
    );
\m_axi_awaddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(31),
      Q => m_axi_awaddr(31),
      R => reset
    );
\m_axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(3),
      Q => m_axi_awaddr(3),
      R => reset
    );
\m_axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(4),
      Q => m_axi_awaddr(4),
      R => reset
    );
\m_axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(5),
      Q => m_axi_awaddr(5),
      R => reset
    );
\m_axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(6),
      Q => m_axi_awaddr(6),
      R => reset
    );
\m_axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(7),
      Q => m_axi_awaddr(7),
      R => reset
    );
\m_axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(8),
      Q => m_axi_awaddr(8),
      R => reset
    );
\m_axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_addr(9),
      Q => m_axi_awaddr(9),
      R => reset
    );
m_axi_awvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2FFFF00020000"
    )
        port map (
      I0 => user_we,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => m_axi_awvalid_i_2_n_0,
      I5 => \^m_axi_awvalid_reg_0\,
      O => m_axi_awvalid_i_1_n_0
    );
m_axi_awvalid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => m_axi_awready,
      I1 => \^m_axi_awvalid_reg_0\,
      I2 => state(0),
      I3 => user_req,
      I4 => user_we,
      O => m_axi_awvalid_i_2_n_0
    );
m_axi_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_axi_awvalid_i_1_n_0,
      Q => \^m_axi_awvalid_reg_0\,
      R => reset
    );
m_axi_bready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => user_we,
      I1 => state(1),
      I2 => state(2),
      I3 => m_axi_bready_i_2_n_0,
      I4 => \^m_axi_bready\,
      O => m_axi_bready_i_1_n_0
    );
m_axi_bready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000F808"
    )
        port map (
      I0 => user_we,
      I1 => user_req,
      I2 => state(1),
      I3 => m_axi_bvalid,
      I4 => state(0),
      I5 => state(2),
      O => m_axi_bready_i_2_n_0
    );
m_axi_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_axi_bready_i_1_n_0,
      Q => \^m_axi_bready\,
      R => reset
    );
m_axi_rready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFFFFF00100010"
    )
        port map (
      I0 => m_axi_rready_i_2_n_0,
      I1 => user_we,
      I2 => user_req,
      I3 => state(2),
      I4 => m_axi_rvalid,
      I5 => \^m_axi_rready\,
      O => m_axi_rready_i_1_n_0
    );
m_axi_rready_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => m_axi_rready_i_2_n_0
    );
m_axi_rready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_axi_rready_i_1_n_0,
      Q => \^m_axi_rready\,
      R => reset
    );
\m_axi_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(0),
      Q => m_axi_wdata(0),
      R => reset
    );
\m_axi_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(10),
      Q => m_axi_wdata(10),
      R => reset
    );
\m_axi_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(11),
      Q => m_axi_wdata(11),
      R => reset
    );
\m_axi_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(12),
      Q => m_axi_wdata(12),
      R => reset
    );
\m_axi_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(13),
      Q => m_axi_wdata(13),
      R => reset
    );
\m_axi_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(14),
      Q => m_axi_wdata(14),
      R => reset
    );
\m_axi_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(15),
      Q => m_axi_wdata(15),
      R => reset
    );
\m_axi_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(16),
      Q => m_axi_wdata(16),
      R => reset
    );
\m_axi_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(17),
      Q => m_axi_wdata(17),
      R => reset
    );
\m_axi_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(18),
      Q => m_axi_wdata(18),
      R => reset
    );
\m_axi_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(19),
      Q => m_axi_wdata(19),
      R => reset
    );
\m_axi_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(1),
      Q => m_axi_wdata(1),
      R => reset
    );
\m_axi_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(20),
      Q => m_axi_wdata(20),
      R => reset
    );
\m_axi_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(21),
      Q => m_axi_wdata(21),
      R => reset
    );
\m_axi_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(22),
      Q => m_axi_wdata(22),
      R => reset
    );
\m_axi_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(23),
      Q => m_axi_wdata(23),
      R => reset
    );
\m_axi_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(24),
      Q => m_axi_wdata(24),
      R => reset
    );
\m_axi_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(25),
      Q => m_axi_wdata(25),
      R => reset
    );
\m_axi_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(26),
      Q => m_axi_wdata(26),
      R => reset
    );
\m_axi_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(27),
      Q => m_axi_wdata(27),
      R => reset
    );
\m_axi_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(28),
      Q => m_axi_wdata(28),
      R => reset
    );
\m_axi_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(29),
      Q => m_axi_wdata(29),
      R => reset
    );
\m_axi_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(2),
      Q => m_axi_wdata(2),
      R => reset
    );
\m_axi_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(30),
      Q => m_axi_wdata(30),
      R => reset
    );
\m_axi_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(31),
      Q => m_axi_wdata(31),
      R => reset
    );
\m_axi_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(3),
      Q => m_axi_wdata(3),
      R => reset
    );
\m_axi_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(4),
      Q => m_axi_wdata(4),
      R => reset
    );
\m_axi_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(5),
      Q => m_axi_wdata(5),
      R => reset
    );
\m_axi_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(6),
      Q => m_axi_wdata(6),
      R => reset
    );
\m_axi_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(7),
      Q => m_axi_wdata(7),
      R => reset
    );
\m_axi_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(8),
      Q => m_axi_wdata(8),
      R => reset
    );
\m_axi_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      D => user_wdata(9),
      Q => m_axi_wdata(9),
      R => reset
    );
m_axi_wvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2FFFF00020000"
    )
        port map (
      I0 => user_we,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => m_axi_wvalid_i_2_n_0,
      I5 => \^m_axi_wvalid_reg_0\,
      O => m_axi_wvalid_i_1_n_0
    );
m_axi_wvalid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => m_axi_wready,
      I1 => \^m_axi_wvalid_reg_0\,
      I2 => state(0),
      I3 => user_req,
      I4 => user_we,
      O => m_axi_wvalid_i_2_n_0
    );
m_axi_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_axi_wvalid_i_1_n_0,
      Q => \^m_axi_wvalid_reg_0\,
      R => reset
    );
\user_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => m_axi_rvalid,
      I3 => state(2),
      O => \user_rdata[31]_i_1_n_0\
    );
\user_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(0),
      Q => user_rdata(0),
      R => reset
    );
\user_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(10),
      Q => user_rdata(10),
      R => reset
    );
\user_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(11),
      Q => user_rdata(11),
      R => reset
    );
\user_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(12),
      Q => user_rdata(12),
      R => reset
    );
\user_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(13),
      Q => user_rdata(13),
      R => reset
    );
\user_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(14),
      Q => user_rdata(14),
      R => reset
    );
\user_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(15),
      Q => user_rdata(15),
      R => reset
    );
\user_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(16),
      Q => user_rdata(16),
      R => reset
    );
\user_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(17),
      Q => user_rdata(17),
      R => reset
    );
\user_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(18),
      Q => user_rdata(18),
      R => reset
    );
\user_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(19),
      Q => user_rdata(19),
      R => reset
    );
\user_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(1),
      Q => user_rdata(1),
      R => reset
    );
\user_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(20),
      Q => user_rdata(20),
      R => reset
    );
\user_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(21),
      Q => user_rdata(21),
      R => reset
    );
\user_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(22),
      Q => user_rdata(22),
      R => reset
    );
\user_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(23),
      Q => user_rdata(23),
      R => reset
    );
\user_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(24),
      Q => user_rdata(24),
      R => reset
    );
\user_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(25),
      Q => user_rdata(25),
      R => reset
    );
\user_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(26),
      Q => user_rdata(26),
      R => reset
    );
\user_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(27),
      Q => user_rdata(27),
      R => reset
    );
\user_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(28),
      Q => user_rdata(28),
      R => reset
    );
\user_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(29),
      Q => user_rdata(29),
      R => reset
    );
\user_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(2),
      Q => user_rdata(2),
      R => reset
    );
\user_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(30),
      Q => user_rdata(30),
      R => reset
    );
\user_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(31),
      Q => user_rdata(31),
      R => reset
    );
\user_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(3),
      Q => user_rdata(3),
      R => reset
    );
\user_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(4),
      Q => user_rdata(4),
      R => reset
    );
\user_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(5),
      Q => user_rdata(5),
      R => reset
    );
\user_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(6),
      Q => user_rdata(6),
      R => reset
    );
\user_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(7),
      Q => user_rdata(7),
      R => reset
    );
\user_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(8),
      Q => user_rdata(8),
      R => reset
    );
\user_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \user_rdata[31]_i_1_n_0\,
      D => m_axi_rdata(9),
      Q => user_rdata(9),
      R => reset
    );
user_ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => user_ready_i_2_n_0,
      I1 => user_ready_i_3_n_0,
      I2 => \^user_ready\,
      O => user_ready_i_1_n_0
    );
user_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033D100D1"
    )
        port map (
      I0 => user_req,
      I1 => state(2),
      I2 => m_axi_rvalid,
      I3 => state(1),
      I4 => m_axi_bvalid,
      I5 => state(0),
      O => user_ready_i_2_n_0
    );
user_ready_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10551011"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => m_axi_rvalid,
      I3 => state(2),
      I4 => m_axi_bvalid,
      O => user_ready_i_3_n_0
    );
user_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => user_ready_i_1_n_0,
      Q => \^user_ready\,
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_master_adapter_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    user_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    user_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    user_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    user_we : in STD_LOGIC;
    user_req : in STD_LOGIC;
    user_ready : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axi_master_adapter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi_master_adapter_0_0 : entity is "design_1_axi_master_adapter_0_0,axi_master_adapter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axi_master_adapter_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_axi_master_adapter_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axi_master_adapter_0_0 : entity is "axi_master_adapter,Vivado 2024.2";
end design_1_axi_master_adapter_0_0;

architecture STRUCTURE of design_1_axi_master_adapter_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axi, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 m_axi ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 m_axi RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 m_axi RREADY";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 m_axi WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi WVALID";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axi ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 m_axi ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 m_axi ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 m_axi ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi AWADDR";
  attribute X_INTERFACE_MODE of m_axi_awaddr : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axi_awaddr : signal is "XIL_INTERFACENAME m_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 m_axi AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 m_axi AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 m_axi AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axi BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axi RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 m_axi RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axi WSTRB";
begin
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const1>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const1>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const1>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const1>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_wlast <= \<const1>\;
  m_axi_wstrb(3) <= \<const1>\;
  m_axi_wstrb(2) <= \<const1>\;
  m_axi_wstrb(1) <= \<const1>\;
  m_axi_wstrb(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_axi_master_adapter_0_0_axi_master_adapter
     port map (
      clk => clk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid_reg_0 => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid_reg_0 => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wready => m_axi_wready,
      m_axi_wvalid_reg_0 => m_axi_wvalid,
      reset => reset,
      user_addr(31 downto 0) => user_addr(31 downto 0),
      user_rdata(31 downto 0) => user_rdata(31 downto 0),
      user_ready => user_ready,
      user_req => user_req,
      user_wdata(31 downto 0) => user_wdata(31 downto 0),
      user_we => user_we
    );
end STRUCTURE;
