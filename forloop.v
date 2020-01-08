module e_for();
reg clk;
integer i;

initial 
begin
#1 clk=0;
for(i=2 ; i<5 ; i=i+1)
begin
#i clk=~clk;
end
end

initial 
	begin
	$monitor("Time=%d clk=%b i=%d",$time,clk,i);
	end
endmodule