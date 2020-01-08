module pipo(pi,clk,reset,po);
input clk,reset;
input [3:0]pi;
output reg [3:0]po;

always @(posedge clk or posedge reset)
begin
if (reset == 1)
	po<=4'b0000;
else
	po <=pi;
end
endmodule