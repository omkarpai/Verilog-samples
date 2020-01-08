module jkflipflop(j,k,clk,reset,q);
input j,k,clk,reset;
output reg q;
reg prev;

always @ (posedge clk or posedge reset)
begin
if (reset == 1)
	begin
	q<=1'b0;
	prev<=1'b0;
	end
else
	begin
	if (j==0 && k==0)
	q<=prev;
	else if (j==0 && k==1)
	q<=1'b0;
	else if (j==1 && k==0)
	q<=1'b1;
	else
		begin
		q<=~prev;
		prev = ~prev;
		end
	end
end
endmodule