`timescale 1ns / 1ns

module adder // you can just use this
        ( input   logic [7:0] a, b,
          output  logic [7:0] sum);
  assign sum = a + b;
endmodule

module multiplier
          ( input logic [3:0] a, b,
            output logic [7:0] product);

/* ====================================== INSERT CODE HERE ====================================== */
logic [7:0] temp1;
logic [7:0] temp2;
adder add (
  .a(a),
  .b(b),
  .sum(temp1) 
);

shifter shift (
  .in(temp1),
  .s(1),
  .out(temp2)
);

always @* begin
if (a == 4'b0000 || b == 4'b0000)  begin
    product = 8'b00000000;
end else begin
  product = temp2;
end 
end 
  

/* ============================================================================================== */

endmodule
