module rcfa_4
(	input [3:0] a,b,
	input cin,
	output cout,
	output [3:0] sum
);
wire c1,c2,c3;
rcfa_1 firstbit (a[0],b[0],cin,sum[0],c1);
rcfa_1 secondbit (a[1],b[1],c1,sum[1],c2);
rcfa_1 thirdbit (a[2],b[2],c2,sum[2],c3);
rcfa_1 fourthbit (a[3],b[3],c3,sum[3],cout);

endmodule
