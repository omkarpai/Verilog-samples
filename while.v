module e_while();
reg clk;
integer stop=0;
initial
begin
#1 clk=0;
while (stop < 10)
	begin
	#5 clk=~clk;
	 stop=stop+1;
	end
end
initial
begin
$monitor ("Time=%d clk=%b stop=%d",$time,clk,stop);
end
endmodule
	