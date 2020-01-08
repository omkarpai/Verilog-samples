module mux41_using_mux21
(	input a,b,c,d,
	input [0:1] sel,
	output y
);
wire m1,m2;

mux21 firstmux (a,b,sel[0],m1);
mux21 secondmux (c,d,sel[0],m2);
mux21 thirdmux (m1,m2,sel[1],y);

endmodule
	