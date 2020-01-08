module srflipflop (s,r,clk,reset,q);
input s,r,clk,reset;
output reg q;
reg prev;

always @(posedge clk or posedge reset)
begin
if (reset ==1)
	begin
	q<= 1'b0;
	prev=1'b0;
	end
else
	begin
	if (s==0 &&	r==0)
	q<=prev;
	else if (s==0 &&	r==1)
	q<=1'b0;
	else if (s==1 && r==0)
	q<=1'b1;
	else
	q<=1'bx;
	end
end
endmodule