`timescale 1ns / 1ps

module system_top_tb;

    // --- 1. Sinyal Tanımları ---
    logic clk;
    logic reset;


    // --- 2. DUT (Device Under Test) Yerleşimi ---
    system_top_eye uut (
        .clk(clk),
        .reset(reset)
    );

    // --- 3. Clock Üreteci (10ns Periyot = 100 MHz) ---
    always begin
        clk = 0;
        #5;
        clk = 1;
        #5;
    end

    // --- 4. Test Senaryosu ---
    initial begin
        // Başlangıç Durumu
        reset = 1;
        
        // Reset'i bir süre tut (2 Clock Cycle)
        #20;
        
        // Reset'i bırak ve işlemciyi çalıştır
        reset = 0;
        $display("--- Simülasyon Başladı: Reset bırakıldı ---");

        
     #305;

        $stop; // Simülasyonu durdur
    end

endmodule