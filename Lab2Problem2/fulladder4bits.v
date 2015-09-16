// synthesis VERILOG_INPUT_VERSION SYSTEMVERILOG_2005
module fulladder4bits(inA, inB, cin, cout, sum);
	input inA [3:0];
	input inB [3:0];
	input cin;
	output cout;
	output sum [3:0];
	
	// input/output wires
	wire inA [3:0];
	wire inB [3:0];
	wire cin;
	wire cout;
	wire sum [3:0];
	
	//intermediate carries
	wire carry [2:0];

	fulladder add0 (
		sum[0],
		carry[0],
		inA[0],
		inB[0],
		cin
	);
	
	//TODO: timing needs to be adjusted for all these subsequent calls.
	fulladder add1 (
		sum[1],
		carry[1],
		inA[1],
		inB[1],
		carry[0]
	);
	
	fulladder add2 (
		sum[2],
		carry[2],
		inA[2],
		inB[2],
		carry[1]
	);
	
	fulladder add3 (
		sum[3],
		cout,
		inA[3],
		inB[3],
		carry[2]
	);
endmodule
