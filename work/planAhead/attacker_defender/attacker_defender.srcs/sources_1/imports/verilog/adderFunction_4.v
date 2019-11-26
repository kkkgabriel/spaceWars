/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module adderFunction_4 (
    input [15:0] a,
    input [15:0] b,
    input [1:0] alufnadder,
    output reg [15:0] res,
    output reg z,
    output reg v,
    output reg n
  );
  
  
  
  reg [15:0] temp;
  
  always @* begin
    
    case (alufnadder)
      2'h0: begin
        temp = a + b;
        v = ((~a[15+0-:1]) & (~b[15+0-:1]) & temp[15+0-:1]) | (a[15+0-:1] & b[15+0-:1] & (~temp[15+0-:1]));
      end
      2'h1: begin
        temp = a - b;
        v = ((~a[15+0-:1]) & (b[15+0-:1]) & temp[15+0-:1]) | (a[15+0-:1] & ~b[15+0-:1] & (~temp[15+0-:1]));
      end
      2'h2: begin
        temp = a * b;
        v = 1'h0;
      end
      default: begin
        temp = 16'h0000;
        v = 1'h0;
      end
    endcase
    res = temp;
    z = (~|temp);
    n = temp[15+0-:1];
  end
endmodule
