
`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Project Name: RISC-V EYE
// Description: Real-Time Object Detection on FPGA Using RISC-V Architecture Graduation Project for Hacettepe University Electrical and Electronics Engineering. 
// File Name: system_top_eye.sv
// Module: Top Module that integrates Processor Core and Memory (BRAM)
// Designer: Tuna Gün Tekin
//////////////////////////////////////////////////////////////////////////////////




module system_top_eye(
    input logic clk,
    input logic reset,

    /////// BRAM Interface ///////
    input logic [31:0] bram_data_read_data_in,
    input logic [31:0] bram_instruction_data_in,

    output logic [9:0] bram_data_addr_out,
    output logic [31:0] bram_data_write_data_out,
    output logic [9:0] bram_instruction_addr_out,
    output logic [31:0] bram_data_write_enable_out,
    output logic        bram_data_enable_out,

    ////// DDR Interface ///////
    input  logic [31:0] ddr_data_read_data_in,
    input logic        ddr_data_ready_in,

    output logic [31:0] ddr_data_address_out,
    output logic [31:0] ddr_data_write_data_out,
    output logic        ddr_data_write_enable_out,
    output logic        ddr_data_req_out
    

    );

    // --- Bağlantı Sinyalleri ---
    logic [31:0] core_instr_addr;
    logic [31:0] core_instr_data;

    logic [31:0] core_data_addr;
    logic [31:0] core_data_write;
    logic [31:0] core_data_read_mux;
    logic        core_data_we;
    logic        core_data_re; //Read Enable 
    logic        core_stall_input;

    // ---------------------------------------------------------
    //  PROCESSOR CORE INSTANCE
    // ---------------------------------------------------------
    risc_v_eye_top core_inst (
        .clk                        (clk),
        .reset                      (reset),

        // Instruction Memory Interface
        .instruction_memory_data_in (core_instr_data),
        .instruction_memory_addr_out(core_instr_addr),
        
        // Data Memory Interface
        .data_memory_read_data_in   (core_data_read_mux),
        .data_memory_ready_in       (core_stall_input), 
        
        .data_memory_write_data_out (core_data_write),
        .data_memory_addr_out       (core_data_addr),
        .data_memory_write_enable_out(core_data_we),
        .data_memory_read_enable_out (core_data_re)

    );

    // ---------------------------------------------------------
    //  ADDRESS AND DATA MUXING LOGIC
    // ---------------------------------------------------------

    logic is_ddr_access;

    // Memory Mapping Logic
    // DDR = 0x10000000 - 0x4FFFFFFF
    //Change according to your ZYNQ Memory Map
    assign is_ddr_access = (core_data_addr >= 32'h10000000) && (core_data_addr <= 32'h4FFFFFFF);

    // Bram Connections
    assign bram_instruction_addr_out = core_instr_addr[11:2]; // BRAM 4KB
    assign core_instr_data = bram_instruction_data_in; // BRAM 4KB

    assign bram_data_addr_out = core_data_addr[11:2]; // BRAM 4KB
    assign bram_data_write_data_out = core_data_write;

    assign bram_data_enable_out = (core_data_re || core_data_we) && !is_ddr_access;
    assign bram_data_write_enable_out = core_data_we && !is_ddr_access;

    // DDR Connections
    assign ddr_data_address_out = core_data_addr;
    assign ddr_data_write_data_out = core_data_write;

    assign ddr_data_req_out = (core_data_re || core_data_we) && is_ddr_access;
    assign ddr_data_write_enable_out = core_data_we && is_ddr_access;

    // Data Read Mux
    always_comb begin
        if (is_ddr_access) begin
            core_data_read_mux = ddr_data_read_data_in;
        end else begin
            core_data_read_mux = bram_data_read_data_in;
        end
    end

    // Stall Logic
    always_comb begin
        if (is_ddr_access) begin
            core_stall_input = ddr_data_ready_in;
        end else begin
            core_stall_input = 1'b1;
        end
    end

    /*---------------------------------------------------------
    // 2. DUAL PORT BRAM INSTANCE
    // ---------------------------------------------------------
    (* dont_touch = "true" *)
    bram_eye #(
        .DATA_WIDTH(32),
        .ADDR_WIDTH(10) // 10 bit adres (1024 kelime)
    ) memory_inst (
        .clk(clk),
        
        // PORT A -> Instruction Fetch
        .addr_a_in      (instr_addr_bram), 
        .read_data_a_out(instr_data),
        
        // PORT B -> Data Memory
        .we_b_in        (data_we),
        .addr_b_in      (data_addr_bram),
        .write_data_b_in(data_wdata),
        .read_data_b_out(data_rdata)
    );*/


/*`timescale 1ns / 1ps
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
    logic [9:0]  instr_addr_bram;
    logic [31:0] instr_data;
    
    logic [31:0] data_addr;
    logic [9:0]  data_addr_bram;
    logic [31:0] data_wdata;
    logic [31:0] data_rdata;
    logic        data_we;
    logic        data_re; //Read Enable 

    // ---------------------------------------------------------
    //  PROCESSOR CORE INSTANCE
    // ---------------------------------------------------------
    (* dont_touch = "true" *)
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
    (* dont_touch = "true" *)
    bram_eye #(
        .DATA_WIDTH(32),
        .ADDR_WIDTH(10) // 10 bit adres (1024 kelime)
    ) memory_inst (
        .clk(clk),
        
        // PORT A -> Instruction Fetch
        .addr_a_in      (instr_addr_bram), 
        .read_data_a_out(instr_data),
        
        // PORT B -> Data Memory
        .we_b_in        (data_we),
        .addr_b_in      (data_addr_bram),
        .write_data_b_in(data_wdata),
        .read_data_b_out(data_rdata)
    );
    */
endmodule