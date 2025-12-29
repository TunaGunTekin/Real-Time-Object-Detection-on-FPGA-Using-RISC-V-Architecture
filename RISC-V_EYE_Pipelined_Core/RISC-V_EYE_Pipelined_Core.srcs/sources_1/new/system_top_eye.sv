`timescale 1ns / 1ps
`include "parameters.vh"

//////////////////////////////////////////////////////////////////////////////////
// Project Name: RISC-V EYE
// Description: Real-Time Object Detection on FPGA Using RISC-V Architecture Graduation Project for Hacettepe University Electrical and Electronics Engineering. 
// File Name: system_top_eye.sv
// Module: Top Module that integrates Processor Core and Memory (BRAM)
// Designer: Tuna Gün Tekin
//////////////////////////////////////////////////////////////////////////////////

(* dont_touch = "true" *) 
module system_top_eye(
    input logic clk,
    input logic reset
    

    );

    // --- Bağlantı Sinyalleri ---
    logic [31:0] instr_addr;
    logic [31:0] instr_data;
    
    logic [31:0] data_addr;
    logic [31:0] data_wdata;
    logic [31:0] data_rdata;
    logic        data_we;
    logic        data_re; //Read Enable 

    // ---------------------------------------------------------
    //  PROCESSOR CORE INSTANCE
    // ---------------------------------------------------------
    risc_v_eye_top core_inst (
        .clk                        (clk),
        .reset                      (reset),

        // Instruction Memory Interface
        .instruction_memory_data_in (instr_data),
        .instruction_memory_addr_out(instr_addr),

        // Data Memory Interface
        .data_memory_read_data_in   (data_rdata),
        .data_memory_ready_in       (1'b1), 
        
        .data_memory_write_data_out (data_wdata),
        .data_memory_addr_out       (data_addr),
        .data_memory_write_enable_out(data_we),
        .data_memory_read_enable_out (data_re)

    );

    assign data_addr_bram = data_addr [11:2]; // BRAM 4KB
    assign instr_addr_bram = instr_addr [11:2]; // BRAM 4KB
    // ---------------------------------------------------------
    // 2. DUAL PORT BRAM INSTANCE
    // ---------------------------------------------------------
    bram_eye #(
        .DATA_WIDTH(32),
        .ADDR_WIDTH(10) // 10 bit adres (1024 kelime)
    ) memory_inst (
        .clk(clk),
        
        // PORT A -> Instruction Fetch
        .addr_a_in      (instr_addr[11:2]), 
        .read_data_a_out(instr_data),
        
        // PORT B -> Data Memory
        .we_b_in        (data_we),
        .addr_b_in      (data_addr[11:2]),
        .write_data_b_in(data_wdata),
        .read_data_b_out(data_rdata)
    );

endmodule
