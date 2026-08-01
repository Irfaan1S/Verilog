module fa(s,c,x,y,cin);

output s,c;
input x,y,cin;

assign s = x ^ y ^ cin;
assign c = (x & y) | (x & cin) | (y & cin) ;

endmodule
