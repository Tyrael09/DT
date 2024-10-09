`timescale 1ns / 1ns

module multi_combination_lock

    ( input   logic A, B, C, D, E, F, G, H, I, J, // Input wires
      output  logic VALID);                       // Set to 1 if current combination is correct

/* ====================================== INSERT CODE HERE ====================================== */
    logic K, L, M, N, O, P; // these variables will be used to track if an entered sequence matches
                            // any of the given codes
    assign K = ~A & ~B & ~C & ~D & ~E & ~F & ~G &  H & ~I & ~J; // 00 0000 0100     
    assign L = ~A & ~B &  C & ~D & ~E & ~F &  G & ~H & ~I & ~J; // 00 1000 1000
    assign M = ~A &  B & ~C & ~D & ~E & ~F &  G &  H &  I &  J; // 01 0000 1111
    assign N = ~A &  B &  C & ~D & ~E &  F & ~G & ~H & ~I & ~J; // 01 1001 0000
    assign O =  A & ~B & ~C & ~D & ~E &  F & ~G &  H &  I &  J; // 10 0001 0111
    assign P =  A & ~B &  C & ~D &  E & ~F &  G & ~H &  I & ~J; // 10 1010 1010
    
    assign VALID = K | L | M | N | O | P; // sets value to 1 if any of the above codes is entered 
                                          // (and 0 otherwise)

/* ============================================================================================== */
    
endmodule
