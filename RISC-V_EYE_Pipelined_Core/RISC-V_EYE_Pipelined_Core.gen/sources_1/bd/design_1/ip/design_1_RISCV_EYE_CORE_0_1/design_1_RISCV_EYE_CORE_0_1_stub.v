// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Feb 14 15:29:20 2026
// Host        : tunagun running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/tuna-gun/GradProject/RISC-V_EYE/RISC-V_EYE_Pipelined_Core/RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ip/design_1_RISCV_EYE_CORE_0_1/design_1_RISCV_EYE_CORE_0_1_stub.v
// Design      : design_1_RISCV_EYE_CORE_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_RISCV_EYE_CORE_0_1,RISCV_EYE_CORE,{}" *) (* CORE_GENERATION_INFO = "design_1_RISCV_EYE_CORE_0_1,RISCV_EYE_CORE,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=RISCV_EYE_CORE,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "RISCV_EYE_CORE,Vivado 2024.2" *) 
module design_1_RISCV_EYE_CORE_0_1(clk, reset, bram_instr_addr_out, 
  bram_instr_data_in, bram_data_addr_out, bram_data_wdata_out, bram_data_rdata_in, 
  bram_data_we_out, bram_data_en_out, ddr_data_addr_out, ddr_data_wdata_out, 
  ddr_data_read_data_in, ddr_data_write_enable_out, ddr_data_req_out, ddr_data_ready_in)
/* synthesis syn_black_box black_box_pad_pin="reset,bram_instr_addr_out[9:0],bram_instr_data_in[31:0],bram_data_addr_out[9:0],bram_data_wdata_out[31:0],bram_data_rdata_in[31:0],bram_data_we_out,bram_data_en_out,ddr_data_addr_out[31:0],ddr_data_wdata_out[31:0],ddr_data_read_data_in[31:0],ddr_data_write_enable_out,ddr_data_req_out,ddr_data_ready_in" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output [9:0]bram_instr_addr_out;
  input [31:0]bram_instr_data_in;
  output [9:0]bram_data_addr_out;
  output [31:0]bram_data_wdata_out;
  input [31:0]bram_data_rdata_in;
  output bram_data_we_out;
  output bram_data_en_out;
  output [31:0]ddr_data_addr_out;
  output [31:0]ddr_data_wdata_out;
  input [31:0]ddr_data_read_data_in;
  output ddr_data_write_enable_out;
  output ddr_data_req_out;
  input ddr_data_ready_in;
endmodule
