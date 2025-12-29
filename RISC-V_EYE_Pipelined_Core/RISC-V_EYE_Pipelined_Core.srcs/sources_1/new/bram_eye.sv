`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Project Name: RISC-V EYE
// Description: Real-Time Object Detection on FPGA Using RISC-V Architecture Graduation Project for Hacettepe University Electrical and Electronics Engineering. 
// File Name: bram_eye.sv
// Module: Block RAM Module for Instruction and Data Memory
// Designer: Tuna Gün Tekin
//////////////////////////////////////////////////////////////////////////////////



module bram_eye #(
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 32
)(
    input logic clk,

    // --- PORT A: Instruction Fetch (Read Only) ---
    input logic [ADDR_WIDTH-1:0]  addr_a_in,
    output logic [DATA_WIDTH-1:0] read_data_a_out,

    // --- PORT B: Data Memory (Read / Write) ---
    input logic                   we_b_in,         // Write Enable
    input logic [ADDR_WIDTH-1:0]  addr_b_in,
    input logic [DATA_WIDTH-1:0]  write_data_b_in,
    output logic [DATA_WIDTH-1:0] read_data_b_out
);

    // Bellek Dizisi

    (* ram_style = "block" *) 
    logic [DATA_WIDTH-1:0] ram [0:(2**ADDR_WIDTH)-1];


    initial begin
       /* 1. ADDI x1, x0, 5    (x1 = 5)
        ram[0] = 32'h00500093;

        // 2. ADDI x2, x0, 3    (x2 = 3)
        ram[1] = 32'h00300113;

        // 3. ADD x3, x1, x2    (x3 = x1 + x2 = 8)
        ram[2] = 32'h002081B3;

        // 4. SUB x4, x1, x2    (x4 = x1 - x2 = 2)
        ram[3] = 32'h40208233;

        // 5. OR x5, x1, x2     (x5 = x1 | x2 = 7)
        ram[4] = 32'h0020E2B3;

        // 6. AND x6, x1, x2    (x6 = x1 & x2 = 1)
        ram[5] = 32'h0020F333;

        // 7. SLLI x7, x1, 2    (x7 = x1 << 2 = 20)
        ram[6] = 32'h00209393;

        // 8. ADDI x0, x0, 0     Nop

        ram[7] = 32'h00000013;
        */
        
        // 1. ADDI x1, x0, 64   -> x1 = 64 (Memory Address for Load/Store)
        ram[0] = 32'h04000093;

        // 2. LUI x2, 0xDEADB   -> x2 = 0xDEADB000 (Upper Immediate Load)
        ram[1] = 32'hDEADB137;

        // 3. ADDI x2, x2, 0xEEF -> x2 = 0xDEADBEEF (Lower Immediate Addition)
        ram[2] = 32'hEEF10113; 
        // 4. SW x2, 0(x1)      -> Mem[64] = x2
        ram[3] = 32'h0020A023;

        // 5. ADDI x2, x0, 0    -> x2 = 0 (Clear x2 to verify Load later)
        ram[4] = 32'h00000113;

        // 6. LW x3, 0(x1)      -> x3 = Mem[64]
        // After this instruction, x3 should contain 0xDEADBEEF
        ram[5] = 32'h0000A183;
        
        // 7. LW x4, 4(x1)      -> x4 = Mem[68] (Should be 0 if not written yet)
        // This instruction is used to test Load-Use hazard detection.
        ram[6] = 32'h0040A203;

        // 8. ADD x5, x4, x3    -> x5 = x4 + x3
        // This instruction depends on the result of the previous Load.
        // It tests whether the Hazard Unit correctly stalls the pipeline.
        ram[7] = 32'h003202B3;

        // 9. BEQ x5, x0, LABEL  -> Branch if x5 == 0 (Should not branch)
        ram[8] = 32'h00000063;
        
        
    end

    // Port A (Instruction)
    always_ff @(posedge clk) begin
        read_data_a_out <= ram[addr_a_in];
    end

    // Port B (Data)
    always_ff @(posedge clk) begin
        if (we_b_in) begin
            ram[addr_b_in] <= write_data_b_in;
        end
        read_data_b_out <= ram[addr_b_in];
    end

endmodule