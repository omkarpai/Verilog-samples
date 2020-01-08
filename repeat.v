module e_repeat();
reg clk;
initial 
begin
	#1 clk=0;
	repeat(11)
	begin
	#5 clk=~clk;
	end
end

initial
begin
$monitor ("time=%d  clk=%b",$time,clk);

end
endmodule