`timescale 1ns / 1ps

module system_top_tb;

    // --- 1. Sinyal Tanımları ---
    logic clk;
    logic reset;

    // --- 2. DUT (Device Under Test) Yerleşimi ---
    system_top_eye uut (
        .clk(clk),
        .reset(reset),
    );

    // --- 3. Clock Üreteci (10ns Periyot = 100 MHz) ---
    always begin
        clk = 0;
        #25;
        clk = 1;    
        #25;
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

        // İşlemcinin komutları işlemesi için zaman tanı (örneğin 500ns)
        // Pipeline dolması ve tüm işlemlerin bitmesi için yeterli süre.
        #500;

        // --- 5. Sonuç Kontrolü (Scoreboard) ---
        $display("--- Simülasyon Bitti: Sonuçlar Kontrol Ediliyor ---");
        
        // Hiyerarşik erişim ile Register File içindeki değerleri okuyoruz.
        // Yol: uut -> core_inst -> decode_stage_inst -> reg_file_inst -> registers
        
        // x1 = 5 (ADDI)
        if (uut.core_inst.decode_stage_inst.reg_file_inst.registers[1] === 32'd5)
            $display("[BAŞARILI] x1 = 5 (Beklenen Değer)");
        else
            $display("[HATA] x1 = %d (Beklenen: 5)", uut.core_inst.decode_stage_inst.reg_file_inst.registers[1]);

        // x2 = 3 (ADDI)
        if (uut.core_inst.decode_stage_inst.reg_file_inst.registers[2] === 32'd3)
            $display("[BAŞARILI] x2 = 3 (Beklenen Değer)");
        else
            $display("[HATA] x2 = %d (Beklenen: 3)", uut.core_inst.decode_stage_inst.reg_file_inst.registers[2]);

        // x3 = 8 (ADD: 5 + 3)
        if (uut.core_inst.decode_stage_inst.reg_file_inst.registers[3] === 32'd8)
            $display("[BAŞARILI] x3 = 8 (ADD Testi)");
        else
            $display("[HATA] x3 = %d (Beklenen: 8)", uut.core_inst.decode_stage_inst.reg_file_inst.registers[3]);

        // x4 = 2 (SUB: 5 - 3)
        if (uut.core_inst.decode_stage_inst.reg_file_inst.registers[4] === 32'd2)
            $display("[BAŞARILI] x4 = 2 (SUB Testi)");
        else
            $display("[HATA] x4 = %d (Beklenen: 2)", uut.core_inst.decode_stage_inst.reg_file_inst.registers[4]);

        // x5 = 7 (OR: 5 | 3)
        if (uut.core_inst.decode_stage_inst.reg_file_inst.registers[5] === 32'd7)
            $display("[BAŞARILI] x5 = 7 (OR Testi)");
        else
            $display("[HATA] x5 = %d (Beklenen: 7)", uut.core_inst.decode_stage_inst.reg_file_inst.registers[5]);

        // x6 = 1 (AND: 5 & 3)
        if (uut.core_inst.decode_stage_inst.reg_file_inst.registers[6] === 32'd1)
            $display("[BAŞARILI] x6 = 1 (AND Testi)");
        else
            $display("[HATA] x6 = %d (Beklenen: 1)", uut.core_inst.decode_stage_inst.reg_file_inst.registers[6]);

        // x7 = 20 (SLL: 5 << 2)
        if (uut.core_inst.decode_stage_inst.reg_file_inst.registers[7] === 32'd20)
            $display("[BAŞARILI] x7 = 20 (SLL Testi)");
        else
            $display("[HATA] x7 = %d (Beklenen: 20)", uut.core_inst.decode_stage_inst.reg_file_inst.registers[7]);

        $stop; // Simülasyonu durdur
    end

endmodule