`include "four_bit_adder.v"

module bcdadder (a,b,s,c);
input [3:0] a;
input [3:0] b;
output [3:0] s;
output c;

wire [3:0] w1;
wire w3;

wire w2;
assign w2 = (w1[3] & w1[2]) | (w1[3] & w1[1]);

assign w4  = w3 | w2;

wire [3:0] w5;
assign w5 = {1'b0,w4, w4, 1'b0};

fourbitadder adder1(a,b,w1,w3);
fourbitadder adder2(w1,w5,s,c);

endmodule 