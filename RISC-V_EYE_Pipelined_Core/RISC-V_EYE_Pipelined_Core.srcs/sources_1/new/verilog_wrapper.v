`timescale 1ns / 1ps

module RISCV_EYE_CORE(
    input wire clk,
    input wire reset,

    // BRAM
    output wire [9:0] bram_instr_addr_out,
    input  wire [31:0] bram_instr_data_in,
    output wire [9:0] bram_data_addr_out,
    output wire [31:0] bram_data_wdata_out,
    input  wire [31:0] bram_data_rdata_in,
    output wire        bram_data_we_out,
    output wire        bram_data_en_out,

    // DDR
    output wire [31:0] ddr_data_addr_out,
    output wire [31:0] ddr_data_wdata_out,
    input  wire [31:0] ddr_data_read_data_in,
    output wire        ddr_data_write_enable_out,
    output wire        ddr_data_req_out,
    input  wire        ddr_data_ready_in

    );

    // SystemVerilog Modülünü Çağırıyoruz
    system_top_eye inst_sv_top (
        .clk(clk),
        .reset(reset),
        .bram_data_read_data_in(bram_data_rdata_in),
        .bram_instruction_data_in(bram_instr_data_in),

        .bram_data_addr_out(bram_data_addr_out),
        .bram_data_write_data_out(bram_data_wdata_out),
        .bram_instruction_addr_out(bram_instr_addr_out),

        .bram_data_write_enable_out(bram_data_we_out),
        .bram_data_enable_out(bram_data_en_out),

        .ddr_data_read_data_in(ddr_data_read_data_in),
        .ddr_data_ready_in(ddr_data_ready_in),

        .ddr_data_address_out(ddr_data_addr_out), // İsimleri system_top_eye ile eşleştir
        .ddr_data_write_data_out(ddr_data_wdata_out),
        .ddr_data_write_enable_out(ddr_data_write_enable_out),
        .ddr_data_req_out(ddr_data_req_out)
        

    );

endmodule