module rcfa_1
(	input a,b,cin,
	output sum,cout
);
wire a1,a2,a3;
xor (sum,a,b,cin);
and (a1,a,b);
and (a2,b,cin);
and (a3,cin,a);
or (cout,a1,a2,a3);

endmodule