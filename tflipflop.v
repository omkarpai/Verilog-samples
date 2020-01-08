module tflipflop (t,clk,reset,q);
input t,clk,reset;
output reg q;
reg prev;

always @(posedge clk or posedge reset)
begin
if (reset == 1)
	begin
	q<= 1'b0;
	prev<= 1'b0;
	end
else 
	if (t==0)
	q<=prev;
	else
	begin
	q<=~(prev);
	prev<=~(prev);
	end
end
endmodule