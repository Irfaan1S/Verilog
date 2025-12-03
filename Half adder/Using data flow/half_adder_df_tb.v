module half_adder_tb;
reg A,B;
wire Sum,Carry;

initial

$monitor("$time , A = %b | B = %b | Sum = %b | Carry = %b", A, B, Sum, Carry);

half_adder test(A,B,Sum,Carry);

initial begin
A = 0; B =0;#100;
A = 0; B =1;#100;
A = 1; B =0;#100;
A = 1; B =1;

end
endmodule
