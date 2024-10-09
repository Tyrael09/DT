`timescale 1ns / 1ns

module main

    ( input logic  A,
      input logic  B,
      input logic  C,
      input logic  D,
      input logic  E,

      output logic  Y
      );

/* ====================================== INSERT CODE HERE ====================================== */
    output logic Q; // Ausgang für gesamte Schaltung

    // Instantiierung der beiden magic-Blöcke mit entsprechenden Eingängen. 
    magic magic_1(
      .A(A),
      .B(C),
      .C(E)

    );

    magic magic_2 (
      .A(B),
      .B(A),
      .C(D)
    );


    // Logik für LUT unter Nutzung von KNF aus der Wahrheitstabelle
    assign Y = (A | B | C | D | E) & (A | B | ~C | ~D | E) &
                (A | ~B | C | D | ~E) & (~A | B | ~C | D | E);


    // logik für gesamte Schaltung, welche die outputs von LUT und den beiden magic modulen mit 
    // OR verbindet. Die Klammern dienen nur der Übersicht, da die Schaltung in der Aufgabe
    // auch so gezeichnet wurde.
    assign Q = (Y | magic_1.Y) | magic_2.Y;
/* ============================================================================================== */

endmodule
