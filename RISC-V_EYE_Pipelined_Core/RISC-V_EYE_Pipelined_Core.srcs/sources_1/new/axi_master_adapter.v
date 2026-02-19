`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Project Name: RISC-V EYE
// Description: Real-Time Object Detection on FPGA Using RISC-V Architecture Graduation Project for Hacettepe University Electrical and Electronics Engineering. 
// File Name: axi_master_adapter.v
// Module: AXI Master Adapter for DDR Memory Access
// Designer: Tuna Gün Tekin
//////////////////////////////////////////////////////////////////////////////////


module axi_master_adapter (
    input  wire        clk,
    input  wire        reset,

    // USER INTERFACE
    input  wire [31:0] user_addr,
    input  wire [31:0] user_wdata,
    output reg  [31:0] user_rdata,
    input  wire        user_we,      // 1: Write, 0: Read
    input  wire        user_req,     // Request Enable
    output reg         user_ready,   // 1: Ready, 0: Stall

    // AXI4 MASTER INTERFACE
    // Write Address Channel
    output reg  [31:0] m_axi_awaddr,
    output wire [7:0]  m_axi_awlen,   // Burst Length (Wire)
    output wire [2:0]  m_axi_awsize,  // Burst Size (Wire)
    output wire [1:0]  m_axi_awburst, // Burst Type (Wire)
    output reg         m_axi_awvalid,
    input  wire        m_axi_awready,
    
    // Write Data Channel
    output reg  [31:0] m_axi_wdata,
    output wire [3:0]  m_axi_wstrb,   // Byte Enable (Wire)
    output wire        m_axi_wlast,   // Last beat (Wire)
    output reg         m_axi_wvalid,
    input  wire        m_axi_wready,
    
    // Write Response Channel
    input  wire [1:0]  m_axi_bresp,
    input  wire        m_axi_bvalid,
    output reg         m_axi_bready,
    
    // Read Address Channel
    output reg  [31:0] m_axi_araddr,
    output wire [7:0]  m_axi_arlen,  
    output wire [2:0]  m_axi_arsize, 
    output wire [1:0]  m_axi_arburst, 
    output reg         m_axi_arvalid,
    input  wire        m_axi_arready,
    
    // Read Data Channel
    input  wire [31:0] m_axi_rdata,
    input  wire [1:0]  m_axi_rresp,
    input  wire        m_axi_rlast,
    input  wire        m_axi_rvalid,
    output reg         m_axi_rready
);

    // State Machine Definitions 
    localparam IDLE       = 3'd0;
    localparam WRITE_ADDR = 3'd1;
    localparam WRITE_DATA = 3'd2; // (Not used explicitly, logic merged)
    localparam WRITE_RESP = 3'd3;
    localparam READ_ADDR  = 3'd4;
    localparam READ_DATA  = 3'd5;

    reg [2:0] state;

    // AXI Constant Assignments 
    assign m_axi_awlen   = 8'd0;    // Single transfer
    assign m_axi_awsize  = 3'b010;  // 4 Bytes (32-bit)
    assign m_axi_awburst = 2'b01;   // INCR type
    assign m_axi_wstrb   = 4'b1111; // All bytes valid
    assign m_axi_wlast   = 1'b1;    // Always last for single transfer

    assign m_axi_arlen   = 8'd0;
    assign m_axi_arsize  = 3'b010;
    assign m_axi_arburst = 2'b01;

    // --- Main Logic ---
    always @(posedge clk) begin
        if (reset) begin
            state           <= IDLE;
            m_axi_awvalid   <= 1'b0;
            m_axi_wvalid    <= 1'b0;
            m_axi_bready    <= 1'b0;
            m_axi_arvalid   <= 1'b0;
            m_axi_rready    <= 1'b0;
            user_ready      <= 1'b0;
            m_axi_awaddr    <= 32'd0;
            m_axi_wdata     <= 32'd0;
            m_axi_araddr    <= 32'd0;
            user_rdata      <= 32'd0;
        end else begin
            case (state)
                // -----------------------------------------------------
                // IDLE: Wait for request
                // -----------------------------------------------------
                IDLE: begin
                    user_ready <= 1'b1; // Ready for new request
                    
                    if (user_req) begin
                        user_ready <= 1'b0; // Busy
                        
                        if (user_we) begin
                            // WRITE REQUEST 
                            m_axi_awaddr  <= user_addr;
                            m_axi_awvalid <= 1'b1;
                            m_axi_wdata   <= user_wdata;
                            m_axi_wvalid  <= 1'b1;
                            m_axi_bready  <= 1'b1; // Ready for response
                            state <= WRITE_ADDR;
                        end else begin
                            // READ REQUEST
                            m_axi_araddr  <= user_addr;
                            m_axi_arvalid <= 1'b1;
                            m_axi_rready  <= 1'b1; // Ready for data
                            state <= READ_ADDR;
                        end
                    end
                end

                // -----------------------------------------------------
                // WRITE SEQUENCES
                // -----------------------------------------------------
                WRITE_ADDR: begin
                    // Check if Address accepted
                    if (m_axi_awready && m_axi_awvalid) begin
                        m_axi_awvalid <= 1'b0;
                    end
                    
                    // Check if Data accepted
                    if (m_axi_wready && m_axi_wvalid) begin
                        m_axi_wvalid <= 1'b0;
                    end
                    
                    // Wait until both Address and Data are accepted
                    if ((!m_axi_awvalid || (m_axi_awready && m_axi_awvalid)) && 
                        (!m_axi_wvalid || (m_axi_wready && m_axi_wvalid))) begin
                         // Note: The logic above simplifies to: check if valids are 0
                         // But inside the cycle they clear, we move to next state.
                    end
                    
                    // Safe transition check: If both valids are cleared (or clearing now)
                    if ((!m_axi_awvalid) && (!m_axi_wvalid)) begin
                         state <= WRITE_RESP;
                    end 
                    // Case for simultaneous clear in the current cycle
                    else if ((m_axi_awready && m_axi_awvalid) && (m_axi_wready && m_axi_wvalid)) begin
                         state <= WRITE_RESP;
                    end
                    // Cases where one was already cleared and other clears now
                    else if ((!m_axi_awvalid) && (m_axi_wready && m_axi_wvalid)) begin
                         state <= WRITE_RESP;
                    end
                    else if ((!m_axi_wvalid) && (m_axi_awready && m_axi_awvalid)) begin
                         state <= WRITE_RESP;
                    end
                end

                WRITE_RESP: begin
                    // Wait for BVALID (Write Response)
                    if (m_axi_bvalid) begin
                        m_axi_bready <= 1'b0;
                        state        <= IDLE;
                        user_ready   <= 1'b1;
                    end
                end

                // -----------------------------------------------------
                // READ SEQUENCES
                // -----------------------------------------------------
                READ_ADDR: begin
                    // Wait for Read Address Acceptance
                    if (m_axi_arready && m_axi_arvalid) begin
                        m_axi_arvalid <= 1'b0;
                        state <= READ_DATA;
                    end
                end

                READ_DATA: begin
                    // Wait for Valid Data (RVALID)
                    if (m_axi_rvalid) begin
                        user_rdata   <= m_axi_rdata;
                        m_axi_rready <= 1'b0;
                        state        <= IDLE;
                        user_ready   <= 1'b1;
                    end
                end
                
                default: state <= IDLE;
            endcase
        end
    end

endmodule