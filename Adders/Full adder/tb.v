module tb;

reg x,y,cin;
wire s,c;

fa fa1(s,c,x,y,cin);

initial
begin
x = 0; y = 0; cin = 0;
#10 x = 0; y = 0; cin = 1;
#10 x = 0; y = 1; cin = 0;
#10 x = 0; y = 1; cin = 1;
#10 x = 1; y = 0; cin = 0;
#10 x = 1; y = 0; cin = 1;
#10 x = 1; y = 1; cin = 0;
#10 x = 1; y = 1; cin = 1;
end
initial
$monitor($time," x = %b y = %b cin = %b sum = %b carry = %b",x,y,cin,s,c);
endmodule
