//NOTE: Lessons to take away from this example project:
//  1. arrays must be declared as 'unpacked'
//			correct:   input data [3:0];
//       incorrect: input [3:0] data;
//  2. files must be saved as *.sv not *.v

module parent (data, returned);
	input data [3:0];
	output returned [3:0];
	wire data [3:0];
	wire returned [3:0];
	
	child ch (
		.in(data),
		.out(returned)
	);

	//do things
endmodule
