`timescale 1ns / 1ns

module display

    ( input  logic  [3: 0]  DIGIT,    // Binary encoding of the digit to display

      output logic  [15:0]  SEGMENT); // Encoding of all segments to enable

/* ====================================== INSERT CODE HERE ====================================== */
always_comb begin
        case(DIGIT)
            4'b0000: SEGMENT = 16'b1111110000110000; // Ziffer 0
            4'b0001: SEGMENT = 16'b0110000000100000; // Ziffer 1
            4'b0010: SEGMENT = 16'b1101101100000000; // Ziffer 2
            4'b0011: SEGMENT = 16'b1111001100000000; // Ziffer 3
            4'b0100: SEGMENT = 16'b0110011100000000; // Ziffer 4
            4'b0101: SEGMENT = 16'b1011011100000000; // Ziffer 5
            4'b0110: SEGMENT = 16'b1011111100000000; // Ziffer 6
            4'b0111: SEGMENT = 16'b1110000000000000; // Ziffer 7
            4'b1000: SEGMENT = 16'b1111111100000000; // Ziffer 8
            4'b1001: SEGMENT = 16'b1111011100000000; // Ziffer 9
            default: SEGMENT = 16'b0000000010110100; // Für ungültige Eingaben: Großes X anzeigen
        endcase
    end


/* ============================================================================================== */

endmodule
