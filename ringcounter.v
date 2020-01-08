module ringcounter(clk,reset,out);
input clk,reset;
output reg [3:0]out;
reg [3:0]temp;

always @(posedge clk or posedge reset)
begin
if (reset ==1)
	temp <=4'b1000;
else
	begin
	out<=temp;
	temp <= temp>>1;
	temp[3] <= temp[0];
	end
end
endmodule