`timescale 1ns/1ps

module ckt(a,b,c,d,e);

output d,e;
input a,b,c;

wire y;

and G1 (y,a,b);
not G2 (e,c);
or G3 (d,y,e);

endmodule
