// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Jan 17 15:10:18 2026
// Host        : tunagun running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_0_1_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_1,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29072)
`pragma protect data_block
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
FUw=
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
