module piso(pi,load,clk,reset,so);
input load,clk,reset;
input [3:0]pi;
output reg so;
reg [3:0]temp;

always @(posedge clk or posedge reset)
begin
if (reset == 1)
	temp <=4'b0000;
else if (load ==1)
	temp<= pi;
else
	begin
	so <= temp[0];
	temp <=temp>>1;
	end
end
endmodule