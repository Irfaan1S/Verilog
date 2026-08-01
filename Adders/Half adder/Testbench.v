module tb;

reg x,y;
wire s,c;

ha ha1(s,c,x,y);

initial
begin
x = 0; y = 0;
#10 x = 0; y = 1;
#10 x = 1; y = 0;
#10 x = 1; y = 1;
end
initial
$monitor($time," x = %b y = %b sum = %b carry = %b",x,y,s,c);
endmodule
