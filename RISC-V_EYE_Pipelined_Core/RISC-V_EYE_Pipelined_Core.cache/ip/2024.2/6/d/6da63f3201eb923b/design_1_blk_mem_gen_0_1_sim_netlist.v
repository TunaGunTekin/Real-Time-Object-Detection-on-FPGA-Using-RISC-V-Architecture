// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Jan 17 10:55:34 2026
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29056)
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
