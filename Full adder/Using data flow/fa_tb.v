module fa_tb;

reg a,b,cin;
wire s,cout;

initial begin
$monitor($time, " a = %b | b = %b | cin = %b | s = %b | cout = %b",a,b,cin,s,cout);
end
fa uut(a,b,cin,s,cout);
initial begin
a = 0;b=0;cin=0;#100
a = 0;b=0;cin=1;#100
a = 0;b=1;cin=0;#100
a = 0;b=1;cin=1;#100
a = 1;b=0;cin=0;#100
a = 1;b=0;cin=1;#100
a = 1;b=1;cin=0;#100
a = 1;b=1;cin=1;
end
endmodule
