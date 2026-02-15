// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Jan 17 10:54:11 2026
// Host        : tunagun running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/tuna-gun/GradProject/RISC-V_EYE/RISC-V_EYE_Pipelined_Core/RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ip/design_1_axi_master_adapter_0_0/design_1_axi_master_adapter_0_0_sim_netlist.v
// Design      : design_1_axi_master_adapter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_master_adapter_0_0,axi_master_adapter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_master_adapter,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_axi_master_adapter_0_0
   (clk,
    reset,
    user_addr,
    user_wdata,
    user_rdata,
    user_we,
    user_req,
    user_ready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axi, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [31:0]user_addr;
  input [31:0]user_wdata;
  output [31:0]user_rdata;
  input user_we;
  input user_req;
  output user_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLEN" *) output [7:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *) output m_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [31:0]m_axi_araddr;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire reset;
  wire [31:0]user_addr;
  wire [31:0]user_rdata;
  wire user_ready;
  wire user_req;
  wire [31:0]user_wdata;
  wire user_we;

  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const1> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const1> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const1> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const1> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_wlast = \<const1> ;
  assign m_axi_wstrb[3] = \<const1> ;
  assign m_axi_wstrb[2] = \<const1> ;
  assign m_axi_wstrb[1] = \<const1> ;
  assign m_axi_wstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_axi_master_adapter_0_0_axi_master_adapter inst
       (.clk(clk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid_reg_0(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid_reg_0(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid_reg_0(m_axi_wvalid),
        .reset(reset),
        .user_addr(user_addr),
        .user_rdata(user_rdata),
        .user_ready(user_ready),
        .user_req(user_req),
        .user_wdata(user_wdata),
        .user_we(user_we));
endmodule

(* ORIG_REF_NAME = "axi_master_adapter" *) 
module design_1_axi_master_adapter_0_0_axi_master_adapter
   (user_rdata,
    m_axi_awaddr,
    m_axi_wdata,
    m_axi_araddr,
    m_axi_wvalid_reg_0,
    m_axi_awvalid_reg_0,
    m_axi_arvalid_reg_0,
    user_ready,
    m_axi_bready,
    m_axi_rready,
    user_we,
    user_req,
    m_axi_bvalid,
    m_axi_rvalid,
    reset,
    clk,
    m_axi_rdata,
    user_addr,
    user_wdata,
    m_axi_wready,
    m_axi_awready,
    m_axi_arready);
  output [31:0]user_rdata;
  output [31:0]m_axi_awaddr;
  output [31:0]m_axi_wdata;
  output [31:0]m_axi_araddr;
  output m_axi_wvalid_reg_0;
  output m_axi_awvalid_reg_0;
  output m_axi_arvalid_reg_0;
  output user_ready;
  output m_axi_bready;
  output m_axi_rready;
  input user_we;
  input user_req;
  input m_axi_bvalid;
  input m_axi_rvalid;
  input reset;
  input clk;
  input [31:0]m_axi_rdata;
  input [31:0]user_addr;
  input [31:0]user_wdata;
  input m_axi_wready;
  input m_axi_awready;
  input m_axi_arready;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire clk;
  wire [31:0]m_axi_araddr;
  wire \m_axi_araddr[31]_i_1_n_0 ;
  wire m_axi_arready;
  wire m_axi_arvalid_i_1_n_0;
  wire m_axi_arvalid_i_2_n_0;
  wire m_axi_arvalid_i_3_n_0;
  wire m_axi_arvalid_reg_0;
  wire [31:0]m_axi_awaddr;
  wire \m_axi_awaddr[31]_i_1_n_0 ;
  wire m_axi_awready;
  wire m_axi_awvalid_i_1_n_0;
  wire m_axi_awvalid_i_2_n_0;
  wire m_axi_awvalid_reg_0;
  wire m_axi_bready;
  wire m_axi_bready_i_1_n_0;
  wire m_axi_bready_i_2_n_0;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire m_axi_rready_i_1_n_0;
  wire m_axi_rready_i_2_n_0;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire m_axi_wvalid_i_1_n_0;
  wire m_axi_wvalid_i_2_n_0;
  wire m_axi_wvalid_reg_0;
  wire reset;
  wire [2:0]state;
  wire [1:1]state__0;
  wire [31:0]user_addr;
  wire [31:0]user_rdata;
  wire \user_rdata[31]_i_1_n_0 ;
  wire user_ready;
  wire user_ready_i_1_n_0;
  wire user_ready_i_2_n_0;
  wire user_ready_i_3_n_0;
  wire user_req;
  wire [31:0]user_wdata;
  wire user_we;

  LUT6 #(
    .INIT(64'h4744477700330000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(m_axi_rvalid),
        .I1(state[2]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(state[1]),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABF8A8ABABF8080)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0),
        .I1(m_axi_rvalid),
        .I2(state[2]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state[1]),
        .I5(\FSM_sequential_state[1]_i_3_n_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h000D)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(user_we),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(state__0));
  LUT6 #(
    .INIT(64'hB0BBFFFFB0BB0000)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(m_axi_wready),
        .I1(m_axi_wvalid_reg_0),
        .I2(m_axi_awready),
        .I3(m_axi_awvalid_reg_0),
        .I4(state[0]),
        .I5(user_req),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h3A303030)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[0]),
        .I1(m_axi_rvalid),
        .I2(state[2]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state[1]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(m_axi_arready),
        .I1(m_axi_arvalid_reg_0),
        .I2(state[0]),
        .I3(m_axi_bvalid),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000,WRITE_RESP:010,READ_DATA:100,READ_ADDR:011,WRITE_ADDR:001" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(reset));
  (* FSM_ENCODED_STATES = "IDLE:000,WRITE_RESP:010,READ_DATA:100,READ_ADDR:011,WRITE_ADDR:001" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(reset));
  (* FSM_ENCODED_STATES = "IDLE:000,WRITE_RESP:010,READ_DATA:100,READ_ADDR:011,WRITE_ADDR:001" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(reset));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axi_araddr[31]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(user_req),
        .I3(user_we),
        .I4(state[1]),
        .O(\m_axi_araddr[31]_i_1_n_0 ));
  FDRE \m_axi_araddr_reg[0] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[0]),
        .Q(m_axi_araddr[0]),
        .R(reset));
  FDRE \m_axi_araddr_reg[10] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[10]),
        .Q(m_axi_araddr[10]),
        .R(reset));
  FDRE \m_axi_araddr_reg[11] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[11]),
        .Q(m_axi_araddr[11]),
        .R(reset));
  FDRE \m_axi_araddr_reg[12] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[12]),
        .Q(m_axi_araddr[12]),
        .R(reset));
  FDRE \m_axi_araddr_reg[13] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[13]),
        .Q(m_axi_araddr[13]),
        .R(reset));
  FDRE \m_axi_araddr_reg[14] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[14]),
        .Q(m_axi_araddr[14]),
        .R(reset));
  FDRE \m_axi_araddr_reg[15] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[15]),
        .Q(m_axi_araddr[15]),
        .R(reset));
  FDRE \m_axi_araddr_reg[16] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[16]),
        .Q(m_axi_araddr[16]),
        .R(reset));
  FDRE \m_axi_araddr_reg[17] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[17]),
        .Q(m_axi_araddr[17]),
        .R(reset));
  FDRE \m_axi_araddr_reg[18] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[18]),
        .Q(m_axi_araddr[18]),
        .R(reset));
  FDRE \m_axi_araddr_reg[19] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[19]),
        .Q(m_axi_araddr[19]),
        .R(reset));
  FDRE \m_axi_araddr_reg[1] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[1]),
        .Q(m_axi_araddr[1]),
        .R(reset));
  FDRE \m_axi_araddr_reg[20] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[20]),
        .Q(m_axi_araddr[20]),
        .R(reset));
  FDRE \m_axi_araddr_reg[21] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[21]),
        .Q(m_axi_araddr[21]),
        .R(reset));
  FDRE \m_axi_araddr_reg[22] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[22]),
        .Q(m_axi_araddr[22]),
        .R(reset));
  FDRE \m_axi_araddr_reg[23] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[23]),
        .Q(m_axi_araddr[23]),
        .R(reset));
  FDRE \m_axi_araddr_reg[24] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[24]),
        .Q(m_axi_araddr[24]),
        .R(reset));
  FDRE \m_axi_araddr_reg[25] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[25]),
        .Q(m_axi_araddr[25]),
        .R(reset));
  FDRE \m_axi_araddr_reg[26] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[26]),
        .Q(m_axi_araddr[26]),
        .R(reset));
  FDRE \m_axi_araddr_reg[27] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[27]),
        .Q(m_axi_araddr[27]),
        .R(reset));
  FDRE \m_axi_araddr_reg[28] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[28]),
        .Q(m_axi_araddr[28]),
        .R(reset));
  FDRE \m_axi_araddr_reg[29] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[29]),
        .Q(m_axi_araddr[29]),
        .R(reset));
  FDRE \m_axi_araddr_reg[2] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[2]),
        .Q(m_axi_araddr[2]),
        .R(reset));
  FDRE \m_axi_araddr_reg[30] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[30]),
        .Q(m_axi_araddr[30]),
        .R(reset));
  FDRE \m_axi_araddr_reg[31] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[31]),
        .Q(m_axi_araddr[31]),
        .R(reset));
  FDRE \m_axi_araddr_reg[3] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[3]),
        .Q(m_axi_araddr[3]),
        .R(reset));
  FDRE \m_axi_araddr_reg[4] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[4]),
        .Q(m_axi_araddr[4]),
        .R(reset));
  FDRE \m_axi_araddr_reg[5] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[5]),
        .Q(m_axi_araddr[5]),
        .R(reset));
  FDRE \m_axi_araddr_reg[6] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[6]),
        .Q(m_axi_araddr[6]),
        .R(reset));
  FDRE \m_axi_araddr_reg[7] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[7]),
        .Q(m_axi_araddr[7]),
        .R(reset));
  FDRE \m_axi_araddr_reg[8] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[8]),
        .Q(m_axi_araddr[8]),
        .R(reset));
  FDRE \m_axi_araddr_reg[9] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .D(user_addr[9]),
        .Q(m_axi_araddr[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFF7777778B000000)) 
    m_axi_arvalid_i_1
       (.I0(m_axi_arvalid_i_2_n_0),
        .I1(state[0]),
        .I2(user_we),
        .I3(user_req),
        .I4(m_axi_arvalid_i_3_n_0),
        .I5(m_axi_arvalid_reg_0),
        .O(m_axi_arvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    m_axi_arvalid_i_2
       (.I0(state[2]),
        .I1(state[1]),
        .I2(m_axi_arready),
        .I3(m_axi_arvalid_reg_0),
        .O(m_axi_arvalid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    m_axi_arvalid_i_3
       (.I0(state[2]),
        .I1(state[1]),
        .O(m_axi_arvalid_i_3_n_0));
  FDRE m_axi_arvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axi_arvalid_i_1_n_0),
        .Q(m_axi_arvalid_reg_0),
        .R(reset));
  LUT5 #(
    .INIT(32'h00001000)) 
    \m_axi_awaddr[31]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(user_req),
        .I3(user_we),
        .I4(state[1]),
        .O(\m_axi_awaddr[31]_i_1_n_0 ));
  FDRE \m_axi_awaddr_reg[0] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[0]),
        .Q(m_axi_awaddr[0]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[10] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[10]),
        .Q(m_axi_awaddr[10]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[11] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[11]),
        .Q(m_axi_awaddr[11]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[12] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[12]),
        .Q(m_axi_awaddr[12]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[13] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[13]),
        .Q(m_axi_awaddr[13]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[14] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[14]),
        .Q(m_axi_awaddr[14]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[15] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[15]),
        .Q(m_axi_awaddr[15]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[16] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[16]),
        .Q(m_axi_awaddr[16]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[17] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[17]),
        .Q(m_axi_awaddr[17]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[18] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[18]),
        .Q(m_axi_awaddr[18]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[19] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[19]),
        .Q(m_axi_awaddr[19]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[1] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[1]),
        .Q(m_axi_awaddr[1]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[20] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[20]),
        .Q(m_axi_awaddr[20]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[21] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[21]),
        .Q(m_axi_awaddr[21]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[22] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[22]),
        .Q(m_axi_awaddr[22]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[23] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[23]),
        .Q(m_axi_awaddr[23]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[24] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[24]),
        .Q(m_axi_awaddr[24]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[25] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[25]),
        .Q(m_axi_awaddr[25]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[26] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[26]),
        .Q(m_axi_awaddr[26]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[27] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[27]),
        .Q(m_axi_awaddr[27]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[28] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[28]),
        .Q(m_axi_awaddr[28]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[29] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[29]),
        .Q(m_axi_awaddr[29]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[2] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[2]),
        .Q(m_axi_awaddr[2]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[30] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[30]),
        .Q(m_axi_awaddr[30]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[31] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[31]),
        .Q(m_axi_awaddr[31]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[3] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[3]),
        .Q(m_axi_awaddr[3]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[4] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[4]),
        .Q(m_axi_awaddr[4]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[5] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[5]),
        .Q(m_axi_awaddr[5]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[6] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[6]),
        .Q(m_axi_awaddr[6]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[7] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[7]),
        .Q(m_axi_awaddr[7]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[8] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[8]),
        .Q(m_axi_awaddr[8]),
        .R(reset));
  FDRE \m_axi_awaddr_reg[9] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_addr[9]),
        .Q(m_axi_awaddr[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFF2FFFF00020000)) 
    m_axi_awvalid_i_1
       (.I0(user_we),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(m_axi_awvalid_i_2_n_0),
        .I5(m_axi_awvalid_reg_0),
        .O(m_axi_awvalid_i_1_n_0));
  LUT5 #(
    .INIT(32'h8F808080)) 
    m_axi_awvalid_i_2
       (.I0(m_axi_awready),
        .I1(m_axi_awvalid_reg_0),
        .I2(state[0]),
        .I3(user_req),
        .I4(user_we),
        .O(m_axi_awvalid_i_2_n_0));
  FDRE m_axi_awvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axi_awvalid_i_1_n_0),
        .Q(m_axi_awvalid_reg_0),
        .R(reset));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    m_axi_bready_i_1
       (.I0(user_we),
        .I1(state[1]),
        .I2(state[2]),
        .I3(m_axi_bready_i_2_n_0),
        .I4(m_axi_bready),
        .O(m_axi_bready_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000F808)) 
    m_axi_bready_i_2
       (.I0(user_we),
        .I1(user_req),
        .I2(state[1]),
        .I3(m_axi_bvalid),
        .I4(state[0]),
        .I5(state[2]),
        .O(m_axi_bready_i_2_n_0));
  FDRE m_axi_bready_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axi_bready_i_1_n_0),
        .Q(m_axi_bready),
        .R(reset));
  LUT6 #(
    .INIT(64'hAAFFFFFF00100010)) 
    m_axi_rready_i_1
       (.I0(m_axi_rready_i_2_n_0),
        .I1(user_we),
        .I2(user_req),
        .I3(state[2]),
        .I4(m_axi_rvalid),
        .I5(m_axi_rready),
        .O(m_axi_rready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    m_axi_rready_i_2
       (.I0(state[1]),
        .I1(state[0]),
        .O(m_axi_rready_i_2_n_0));
  FDRE m_axi_rready_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axi_rready_i_1_n_0),
        .Q(m_axi_rready),
        .R(reset));
  FDRE \m_axi_wdata_reg[0] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[0]),
        .Q(m_axi_wdata[0]),
        .R(reset));
  FDRE \m_axi_wdata_reg[10] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[10]),
        .Q(m_axi_wdata[10]),
        .R(reset));
  FDRE \m_axi_wdata_reg[11] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[11]),
        .Q(m_axi_wdata[11]),
        .R(reset));
  FDRE \m_axi_wdata_reg[12] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[12]),
        .Q(m_axi_wdata[12]),
        .R(reset));
  FDRE \m_axi_wdata_reg[13] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[13]),
        .Q(m_axi_wdata[13]),
        .R(reset));
  FDRE \m_axi_wdata_reg[14] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[14]),
        .Q(m_axi_wdata[14]),
        .R(reset));
  FDRE \m_axi_wdata_reg[15] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[15]),
        .Q(m_axi_wdata[15]),
        .R(reset));
  FDRE \m_axi_wdata_reg[16] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[16]),
        .Q(m_axi_wdata[16]),
        .R(reset));
  FDRE \m_axi_wdata_reg[17] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[17]),
        .Q(m_axi_wdata[17]),
        .R(reset));
  FDRE \m_axi_wdata_reg[18] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[18]),
        .Q(m_axi_wdata[18]),
        .R(reset));
  FDRE \m_axi_wdata_reg[19] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[19]),
        .Q(m_axi_wdata[19]),
        .R(reset));
  FDRE \m_axi_wdata_reg[1] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[1]),
        .Q(m_axi_wdata[1]),
        .R(reset));
  FDRE \m_axi_wdata_reg[20] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[20]),
        .Q(m_axi_wdata[20]),
        .R(reset));
  FDRE \m_axi_wdata_reg[21] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[21]),
        .Q(m_axi_wdata[21]),
        .R(reset));
  FDRE \m_axi_wdata_reg[22] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[22]),
        .Q(m_axi_wdata[22]),
        .R(reset));
  FDRE \m_axi_wdata_reg[23] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[23]),
        .Q(m_axi_wdata[23]),
        .R(reset));
  FDRE \m_axi_wdata_reg[24] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[24]),
        .Q(m_axi_wdata[24]),
        .R(reset));
  FDRE \m_axi_wdata_reg[25] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[25]),
        .Q(m_axi_wdata[25]),
        .R(reset));
  FDRE \m_axi_wdata_reg[26] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[26]),
        .Q(m_axi_wdata[26]),
        .R(reset));
  FDRE \m_axi_wdata_reg[27] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[27]),
        .Q(m_axi_wdata[27]),
        .R(reset));
  FDRE \m_axi_wdata_reg[28] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[28]),
        .Q(m_axi_wdata[28]),
        .R(reset));
  FDRE \m_axi_wdata_reg[29] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[29]),
        .Q(m_axi_wdata[29]),
        .R(reset));
  FDRE \m_axi_wdata_reg[2] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[2]),
        .Q(m_axi_wdata[2]),
        .R(reset));
  FDRE \m_axi_wdata_reg[30] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[30]),
        .Q(m_axi_wdata[30]),
        .R(reset));
  FDRE \m_axi_wdata_reg[31] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[31]),
        .Q(m_axi_wdata[31]),
        .R(reset));
  FDRE \m_axi_wdata_reg[3] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[3]),
        .Q(m_axi_wdata[3]),
        .R(reset));
  FDRE \m_axi_wdata_reg[4] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[4]),
        .Q(m_axi_wdata[4]),
        .R(reset));
  FDRE \m_axi_wdata_reg[5] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[5]),
        .Q(m_axi_wdata[5]),
        .R(reset));
  FDRE \m_axi_wdata_reg[6] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[6]),
        .Q(m_axi_wdata[6]),
        .R(reset));
  FDRE \m_axi_wdata_reg[7] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[7]),
        .Q(m_axi_wdata[7]),
        .R(reset));
  FDRE \m_axi_wdata_reg[8] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[8]),
        .Q(m_axi_wdata[8]),
        .R(reset));
  FDRE \m_axi_wdata_reg[9] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .D(user_wdata[9]),
        .Q(m_axi_wdata[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFF2FFFF00020000)) 
    m_axi_wvalid_i_1
       (.I0(user_we),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(m_axi_wvalid_i_2_n_0),
        .I5(m_axi_wvalid_reg_0),
        .O(m_axi_wvalid_i_1_n_0));
  LUT5 #(
    .INIT(32'h8F808080)) 
    m_axi_wvalid_i_2
       (.I0(m_axi_wready),
        .I1(m_axi_wvalid_reg_0),
        .I2(state[0]),
        .I3(user_req),
        .I4(user_we),
        .O(m_axi_wvalid_i_2_n_0));
  FDRE m_axi_wvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axi_wvalid_i_1_n_0),
        .Q(m_axi_wvalid_reg_0),
        .R(reset));
  LUT4 #(
    .INIT(16'h1000)) 
    \user_rdata[31]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(m_axi_rvalid),
        .I3(state[2]),
        .O(\user_rdata[31]_i_1_n_0 ));
  FDRE \user_rdata_reg[0] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[0]),
        .Q(user_rdata[0]),
        .R(reset));
  FDRE \user_rdata_reg[10] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[10]),
        .Q(user_rdata[10]),
        .R(reset));
  FDRE \user_rdata_reg[11] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[11]),
        .Q(user_rdata[11]),
        .R(reset));
  FDRE \user_rdata_reg[12] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[12]),
        .Q(user_rdata[12]),
        .R(reset));
  FDRE \user_rdata_reg[13] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[13]),
        .Q(user_rdata[13]),
        .R(reset));
  FDRE \user_rdata_reg[14] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[14]),
        .Q(user_rdata[14]),
        .R(reset));
  FDRE \user_rdata_reg[15] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[15]),
        .Q(user_rdata[15]),
        .R(reset));
  FDRE \user_rdata_reg[16] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[16]),
        .Q(user_rdata[16]),
        .R(reset));
  FDRE \user_rdata_reg[17] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[17]),
        .Q(user_rdata[17]),
        .R(reset));
  FDRE \user_rdata_reg[18] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[18]),
        .Q(user_rdata[18]),
        .R(reset));
  FDRE \user_rdata_reg[19] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[19]),
        .Q(user_rdata[19]),
        .R(reset));
  FDRE \user_rdata_reg[1] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[1]),
        .Q(user_rdata[1]),
        .R(reset));
  FDRE \user_rdata_reg[20] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[20]),
        .Q(user_rdata[20]),
        .R(reset));
  FDRE \user_rdata_reg[21] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[21]),
        .Q(user_rdata[21]),
        .R(reset));
  FDRE \user_rdata_reg[22] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[22]),
        .Q(user_rdata[22]),
        .R(reset));
  FDRE \user_rdata_reg[23] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[23]),
        .Q(user_rdata[23]),
        .R(reset));
  FDRE \user_rdata_reg[24] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[24]),
        .Q(user_rdata[24]),
        .R(reset));
  FDRE \user_rdata_reg[25] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[25]),
        .Q(user_rdata[25]),
        .R(reset));
  FDRE \user_rdata_reg[26] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[26]),
        .Q(user_rdata[26]),
        .R(reset));
  FDRE \user_rdata_reg[27] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[27]),
        .Q(user_rdata[27]),
        .R(reset));
  FDRE \user_rdata_reg[28] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[28]),
        .Q(user_rdata[28]),
        .R(reset));
  FDRE \user_rdata_reg[29] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[29]),
        .Q(user_rdata[29]),
        .R(reset));
  FDRE \user_rdata_reg[2] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[2]),
        .Q(user_rdata[2]),
        .R(reset));
  FDRE \user_rdata_reg[30] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[30]),
        .Q(user_rdata[30]),
        .R(reset));
  FDRE \user_rdata_reg[31] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[31]),
        .Q(user_rdata[31]),
        .R(reset));
  FDRE \user_rdata_reg[3] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[3]),
        .Q(user_rdata[3]),
        .R(reset));
  FDRE \user_rdata_reg[4] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[4]),
        .Q(user_rdata[4]),
        .R(reset));
  FDRE \user_rdata_reg[5] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[5]),
        .Q(user_rdata[5]),
        .R(reset));
  FDRE \user_rdata_reg[6] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[6]),
        .Q(user_rdata[6]),
        .R(reset));
  FDRE \user_rdata_reg[7] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[7]),
        .Q(user_rdata[7]),
        .R(reset));
  FDRE \user_rdata_reg[8] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[8]),
        .Q(user_rdata[8]),
        .R(reset));
  FDRE \user_rdata_reg[9] 
       (.C(clk),
        .CE(\user_rdata[31]_i_1_n_0 ),
        .D(m_axi_rdata[9]),
        .Q(user_rdata[9]),
        .R(reset));
  LUT3 #(
    .INIT(8'hB8)) 
    user_ready_i_1
       (.I0(user_ready_i_2_n_0),
        .I1(user_ready_i_3_n_0),
        .I2(user_ready),
        .O(user_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000033D100D1)) 
    user_ready_i_2
       (.I0(user_req),
        .I1(state[2]),
        .I2(m_axi_rvalid),
        .I3(state[1]),
        .I4(m_axi_bvalid),
        .I5(state[0]),
        .O(user_ready_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h10551011)) 
    user_ready_i_3
       (.I0(state[0]),
        .I1(state[1]),
        .I2(m_axi_rvalid),
        .I3(state[2]),
        .I4(m_axi_bvalid),
        .O(user_ready_i_3_n_0));
  FDRE user_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(user_ready_i_1_n_0),
        .Q(user_ready),
        .R(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
