`timescale 1ns / 1ns

module blinky

    ( input  logic  L,    // do blinking on the left side
      input  logic  R ,   // do blinking on the right side
      input  logic  W,    // do emergency blinking
      input  logic  E_I,  // blinking impulse

      output logic  E_L,  // Signal to the left blinker
      output logic  E_R); // Signal to the right blinker

/* ====================================== INSERT CODE HERE ====================================== */
    assign E_L = (L | W) & E_I; /* left side blinks when either left input or emergency input are on 
                                    and blinking impulse is on, otherwise left blinker stays off.    
                                */
    assign E_R = (R | W) & E_I; // same as E_L, but with right side instead of left.
/* ============================================================================================== */

endmodule
