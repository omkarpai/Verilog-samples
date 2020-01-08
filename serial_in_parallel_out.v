module sipo(si,clk,reset,po);
input si,clk,reset;
output reg [3:0]po;
reg [3:0]temp;

always @(posedge clk or posedge reset)
begin
if (reset ==1)
	temp<=4'b0000;
else
	begin
	temp<= temp>>1;
	temp[3]<=si;
	po=temp;
	end
end
endmodule