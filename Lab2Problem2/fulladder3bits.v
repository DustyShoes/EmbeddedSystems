module fulladder3bits(inA, inB, cin, cout, sum);
	input [3:0] inA;
	input [3:0] inB;
	input cin;
	output cout;
	output [3:0] sum;
	
	// input/output wires
	wire [3:0] inA;
	wire [3:0] inB;
	wire cin;
	wire cout;
	wire [3:0] sum;
	
	//intermediate carries
	wire [2:0] carry;
	
	fulladder add0 (
		sum[0],
		carry[0],
		inA[0],
		inB[0],
		cin
	);
	
	fulladder #20 add1 (
		sum[1],
		carry[1],
		inA[1],
		inB[1],
		carry[0]
	);
	
	fulladder #40 add2 (
		sum[2],
		carry[2],
		inA[2],
		inB[2],
		carry[1]
	);
	
	fulladder #60 add3 (
		sum[3],
		cout,
		inA[3],
		inB[3],
		carry[2]
	);
endmodule
