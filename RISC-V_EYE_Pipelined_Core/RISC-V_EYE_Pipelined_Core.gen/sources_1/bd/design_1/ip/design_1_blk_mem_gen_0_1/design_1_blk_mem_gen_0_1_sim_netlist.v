// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Jan 17 15:10:19 2026
// Host        : tunagun running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/tuna-gun/GradProject/RISC-V_EYE/RISC-V_EYE_Pipelined_Core/RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_1/design_1_blk_mem_gen_0_1_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_1,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_1
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.9043 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_0_1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_blk_mem_gen_0_1_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29168)
`pragma protect data_block
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
`pragma protect end_protected
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
