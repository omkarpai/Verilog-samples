module mux21
(	input a,
	input b,
	input s,
	output y
	);
wire a1,a2;
and (a1,a,s);
and (a2,b,~s);
or (y,a1,a2);

endmodule