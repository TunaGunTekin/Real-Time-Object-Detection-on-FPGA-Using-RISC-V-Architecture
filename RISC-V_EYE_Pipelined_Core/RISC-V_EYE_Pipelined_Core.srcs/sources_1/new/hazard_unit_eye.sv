`timescale 1ns / 1ps
`include "parameters.vh"
//////////////////////////////////////////////////////////////////////////////////
// Module: Hazard Unit (Latch Fix Applied)
//////////////////////////////////////////////////////////////////////////////////

module hazard_unit_eye(
    // Inputs from Decode Stage
    input logic[4:0]       rs1_addr_dec_in,
    input logic[4:0]       rs2_addr_dec_in,

    // Inputs from EX Stage
    input logic[4:0]       rs1_addr_ex_in,
    input logic[4:0]       rs2_addr_ex_in,
    input logic            pc_src_ex_in, //BRANCH

    input logic            mem_read_enable_ex_in, //LOAD
    input logic[4:0]       rd_addr_ex_in,

    // Inputs from MEM Stage
    input logic            reg_write_enable_mem_in,
    input logic[4:0]       rd_addr_mem_in,
    input logic            mem_stall_mem_in, //STALL from MEM

    //Inputs from WB Stage
    input logic            reg_write_enable_wb_in,
    input logic[4:0]       rd_addr_wb_in,

    // Outputs 
    output logic[1:0]        forward_a_select_out,
    output logic[1:0]        forward_b_select_out,  

    output logic             stall_fetch_out,
    output logic             stall_if_id_out,
    output logic             stall_id_ex_out,
    output logic             stall_ex_mem_out,
    output logic             stall_mem_wb_out,
    output logic             clear_if_id_out,
    output logic             clear_id_ex_out,
    output logic             clear_ex_mem_out,
    output logic             clear_mem_wb_out
    );

    logic lw_hazard;

    // --- Forwarding Unit A ---
    always_comb begin 
        forward_a_select_out = 2'b00; // Default
        
        if ((reg_write_enable_mem_in == 1'b1) && (rd_addr_mem_in != 5'd0) && 
            (rd_addr_mem_in == rs1_addr_ex_in)) begin
            forward_a_select_out = 2'b01; 
        end else if ((reg_write_enable_wb_in == 1'b1) && (rd_addr_wb_in != 5'd0) && 
                     (rd_addr_wb_in == rs1_addr_ex_in)) begin
            forward_a_select_out = 2'b10; 
        end
    end 

    // --- Forwarding Unit B ---
    always_comb begin
        forward_b_select_out = 2'b00; // Default
        
        if ((reg_write_enable_mem_in == 1'b1) && (rd_addr_mem_in != 5'd0) && 
            (rd_addr_mem_in == rs2_addr_ex_in)) begin
            forward_b_select_out = 2'b01; 
        end else if ((reg_write_enable_wb_in == 1'b1) && (rd_addr_wb_in != 5'd0) && 
                     (rd_addr_wb_in == rs2_addr_ex_in)) begin
            forward_b_select_out = 2'b10; 
        end
    end

    // --- Load-Use Hazard Detection ---
    always_comb begin
        if ((mem_read_enable_ex_in == 1'b1)  && ((rd_addr_ex_in == rs1_addr_dec_in) || (rd_addr_ex_in == rs2_addr_dec_in))) begin
            lw_hazard = 1'b1;
        end else begin
            lw_hazard = 1'b0;
        end
    end
    
    // --- Stall & Flush Control Logic 
    always_comb begin
        // 1. DEFAULT ASSIGNMENTS
        stall_fetch_out  = 1'b0;
        stall_if_id_out  = 1'b0;
        stall_id_ex_out  = 1'b0;
        stall_ex_mem_out = 1'b0;
        stall_mem_wb_out = 1'b0;

        clear_if_id_out  = 1'b0;
        clear_id_ex_out  = 1'b0;
        clear_ex_mem_out = 1'b0;
        clear_mem_wb_out = 1'b0;

        // 2. PRIORITY LOGIC 
        // Memory stall is the highest priority
        if (mem_stall_mem_in == 1'b1) begin
            stall_fetch_out  = 1'b1;
            stall_if_id_out  = 1'b1;
            stall_id_ex_out  = 1'b1;
            stall_ex_mem_out = 1'b1;
            stall_mem_wb_out = 1'b1;
        end 
        // if Branch taken, clear IF and ID stages
        else if (pc_src_ex_in == 1'b1) begin
            clear_if_id_out = 1'b1;
            clear_id_ex_out = 1'b1;
        end 
        // Load-Use Hazar (Bubble)
        else if (lw_hazard == 1'b1) begin
            stall_fetch_out = 1'b1;
            stall_if_id_out = 1'b1;
            clear_id_ex_out = 1'b1; 
        end
    end

endmodule