-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Sat Feb 14 15:29:20 2026
-- Host        : tunagun running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/tuna-gun/GradProject/RISC-V_EYE/RISC-V_EYE_Pipelined_Core/RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ip/design_1_RISCV_EYE_CORE_0_1/design_1_RISCV_EYE_CORE_0_1_stub.vhdl
-- Design      : design_1_RISCV_EYE_CORE_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_RISCV_EYE_CORE_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    bram_instr_addr_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    bram_instr_data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_data_addr_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    bram_data_wdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_data_rdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_data_we_out : out STD_LOGIC;
    bram_data_en_out : out STD_LOGIC;
    ddr_data_addr_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ddr_data_wdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ddr_data_read_data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ddr_data_write_enable_out : out STD_LOGIC;
    ddr_data_req_out : out STD_LOGIC;
    ddr_data_ready_in : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_RISCV_EYE_CORE_0_1 : entity is "design_1_RISCV_EYE_CORE_0_1,RISCV_EYE_CORE,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_RISCV_EYE_CORE_0_1 : entity is "design_1_RISCV_EYE_CORE_0_1,RISCV_EYE_CORE,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=RISCV_EYE_CORE,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_RISCV_EYE_CORE_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_RISCV_EYE_CORE_0_1 : entity is "module_ref";
end design_1_RISCV_EYE_CORE_0_1;

architecture stub of design_1_RISCV_EYE_CORE_0_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,reset,bram_instr_addr_out[9:0],bram_instr_data_in[31:0],bram_data_addr_out[9:0],bram_data_wdata_out[31:0],bram_data_rdata_in[31:0],bram_data_we_out,bram_data_en_out,ddr_data_addr_out[31:0],ddr_data_wdata_out[31:0],ddr_data_read_data_in[31:0],ddr_data_write_enable_out,ddr_data_req_out,ddr_data_ready_in";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "RISCV_EYE_CORE,Vivado 2024.2";
begin
end;
