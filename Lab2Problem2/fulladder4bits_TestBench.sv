module fulladder4bits_TestBench ();
//Inputs
reg A [3:0];
reg B [3:0];
reg C;

//Outputs
wire cout;
wire sum [3:0];

// Instantiate the unit under test
fulladder4bits fa (
	.inA(A),
	.inB(B),
	.cin(C),
	.cout(cout),
	.sum(sum)
);

initial begin
	// 0000 + 0000 + 0
	A[0] = 0;
	A[1] = 0;
	A[2] = 0;
	A[3] = 0;
	B[0] = 0;
	B[1] = 0;
	B[2] = 0;
	B[3] = 0;
	C = 0;
	#300
	
	// 1010 + 1010 + 0
	A[0] = 1;
	A[1] = 0;
	A[2] = 1;
	A[3] = 0;
	B[0] = 1;
	B[1] = 0;
	B[2] = 1;
	B[3] = 0;
	C = 0;
	#300
	
	// 0101 + 0101 + 0
	A[0] = 0;
	A[1] = 1;
	A[2] = 0;
	A[3] = 1;
	B[0] = 0;
	B[1] = 1;
	B[2] = 0;
	B[3] = 1;
	C = 0;
	#300
	
	// 0000 + 0000 + 1 carry in
	A[0] = 0;
	A[1] = 0;
	A[2] = 0;
	A[3] = 0;
	B[0] = 0;
	B[1] = 0;
	B[2] = 0;
	B[3] = 0;
	C = 1;
	#300
	
	// 1111 + 1111 + 1 all ones
	A[0] = 1;
	A[1] = 1;
	A[2] = 1;
	A[3] = 1;
	B[0] = 1;
	B[1] = 1;
	B[2] = 1;
	B[3] = 1;
	C = 1;
end
endmodule
