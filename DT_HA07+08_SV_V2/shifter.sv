`timescale 1ns / 1ns

module shifter
          ( input   logic [3:0] in,   // input
            input   logic [1:0] s,    // shift
            output  logic [7:0] out); // set to input <<< shift

/* ====================================== INSERT CODE HERE ====================================== */


// assuming missing bits are automatically padded, as it happens when I run the testbench.
multiplexer2bit mux2 (
  .m0({in}), // no shift
  .m1({in, 1'b0}), // 1 logical shift left
  .m2({in, 2'b00}), // 2 LSL
  .m3({in, 3'b000}), // 3 LSL
  .s(s), // select to output m0/m1/m2/m3 
  .out(out) 
);


/* ============================================================================================== */

endmodule
