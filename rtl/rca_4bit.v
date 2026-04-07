module rca_4bit (
	input wire [3:0] A,// 4-bit input A
	input wire [3:0] B,// 4-bit input B
	input wire cin,// input carry in for cascadence system
	output wire [3:0] S,  // 4-bit sum 
	output wire cout // final carry output
	);
	
	//internal wires for carry cascadence
	wire c1, c2, c3;

	//we have to instantiate the full_adder module 
	//port mapping
	full_adder fa0 (.a(A[0]),.b(B[0]),.cin(cin), .sum(S[0]), .cout(c1));
	
	full_adder fa1 (.a(A[1]),.b(B[1]),.cin(c1), .sum(S[1]), .cout(c2));

	full_adder fa2 (.a(A[2]),.b(B[2]),.cin(c2), .sum(S[2]), .cout(c3));

	full_adder fa3 (.a(A[3]),.b(B[3]),.cin(c3), .sum(S[3]), .cout(cout));

endmodule
