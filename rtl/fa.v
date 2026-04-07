module full_adder ( input wire a,
	input wire b,
	input wire cin,
	output wire sum,
	output wire cout
);

//logic for sum : a,b,cin
	
	assign sum = a^b^cin;

	//logic for carry out: (a & b) OR (Cin & (a XOR b)

	assign cout = (a & b) | (cin & (a ^ b));

endmodule 
