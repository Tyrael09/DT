`timescale 1ns / 1ns

module multiplexer1bit
            ( input  logic [7:0] m0, m1,  // data inputs
              input  logic       s,       // selection input
              output logic [7:0] out);    // output

/* ====================================== INSERT CODE HERE ====================================== */


// if s == 0, set out to m0, otherwise set to m1
always @* begin
if (s)  begin
    out = m1;
  end else begin
    out = m0;
  end 
end 

/* ============================================================================================== */

endmodule

module multiplexer2bit
            ( input  logic [7:0] m0, m1, m2, m3,  // data inputs
              input  logic [1:0] s,               // selection inputs
              output logic [7:0] out);            // output

/* ====================================== INSERT CODE HERE ====================================== */


// similar to multiplexer2bit, but with 2 extra cases when s is 2 or 3
always @* begin
if (s == 2'b00)  begin
    out = m0;
  end else if(s == 2'b01) begin
    out = m1;
  end else if(s == 2'b10) begin
    out = m2;
  end else begin
    out = m3;
  end
end 
/* ============================================================================================== */

endmodule
