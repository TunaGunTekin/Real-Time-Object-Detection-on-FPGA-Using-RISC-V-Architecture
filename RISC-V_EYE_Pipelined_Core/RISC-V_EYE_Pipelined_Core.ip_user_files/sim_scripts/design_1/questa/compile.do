vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/blk_mem_gen_v8_4_9
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_3
vlib questa_lib/msim/proc_sys_reset_v5_0_16
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_19
vlib questa_lib/msim/processing_system7_vip_v1_0_21
vlib questa_lib/msim/generic_baseblocks_v2_1_2
vlib questa_lib/msim/fifo_generator_v13_2_11
vlib questa_lib/msim/axi_data_fifo_v2_1_32
vlib questa_lib/msim/axi_register_slice_v2_1_33
vlib questa_lib/msim/axi_protocol_converter_v2_1_33
vlib questa_lib/msim/axi_clock_converter_v2_1_32
vlib questa_lib/msim/axi_dwidth_converter_v2_1_33

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap blk_mem_gen_v8_4_9 questa_lib/msim/blk_mem_gen_v8_4_9
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_3 questa_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 questa_lib/msim/proc_sys_reset_v5_0_16
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 questa_lib/msim/axi_vip_v1_1_19
vmap processing_system7_vip_v1_0_21 questa_lib/msim/processing_system7_vip_v1_0_21
vmap generic_baseblocks_v2_1_2 questa_lib/msim/generic_baseblocks_v2_1_2
vmap fifo_generator_v13_2_11 questa_lib/msim/fifo_generator_v13_2_11
vmap axi_data_fifo_v2_1_32 questa_lib/msim/axi_data_fifo_v2_1_32
vmap axi_register_slice_v2_1_33 questa_lib/msim/axi_register_slice_v2_1_33
vmap axi_protocol_converter_v2_1_33 questa_lib/msim/axi_protocol_converter_v2_1_33
vmap axi_clock_converter_v2_1_32 questa_lib/msim/axi_clock_converter_v2_1_32
vmap axi_dwidth_converter_v2_1_33 questa_lib/msim/axi_dwidth_converter_v2_1_33

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_9 -64 -incr -mfcu  "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_1/sim/design_1_blk_mem_gen_0_1.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0/design_1_clk_wiz_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0/design_1_clk_wiz_0.v" \

vcom -work lib_cdc_v1_0_3 -64 -93  \
"../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -64 -93  \
"../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_50M_0/sim/design_1_rst_clk_wiz_50M_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_top_wrapper_0_1/sim/design_1_system_top_wrapper_0_1.v" \
"../../../bd/design_1/ip/design_1_axi_master_adapter_0_0/sim/design_1_axi_master_adapter_0_0.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_21 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_1/sim/design_1_processing_system7_0_1.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work generic_baseblocks_v2_1_2 -64 -incr -mfcu  "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_11 -64 -incr -mfcu  "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/6080/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_11 -64 -93  \
"../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/6080/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_11 -64 -incr -mfcu  "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/6080/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_32 -64 -incr -mfcu  "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/65ce/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33 -64 -incr -mfcu  "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_33 -64 -incr -mfcu  "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/27ae/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_mem_intercon_imp_auto_pc_0/sim/design_1_axi_mem_intercon_imp_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_32 -64 -incr -mfcu  "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/a4e8/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_33 -64 -incr -mfcu  "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/d794/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../RISC-V_EYE_Pipelined_Core.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_mem_intercon_imp_auto_us_0/sim/design_1_axi_mem_intercon_imp_auto_us_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

