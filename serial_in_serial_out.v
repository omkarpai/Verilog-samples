module siso(si,clk,reset,so);
input si,clk,reset;
output reg so;
reg [3:0]temp;

always @(posedge clk or posedge reset)
begin
if (reset ==1)
	temp<=4'b0000;
else
	begin
	temp <= temp>>1;
	temp[3] <= si;
	so <= temp[0];
	end
end
endmodule