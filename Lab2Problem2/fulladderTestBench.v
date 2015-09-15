module fulladderTestBench ();
//inputs
reg clock;
reg A;
reg B;
reg cin;

//outputs
wire sum;
wire cout;

fulladder fa (
	.s(sum),
	.co(cout),
	.a(A),
	.b(B),
	.ci(cin)
);

//clock
always #200 clock = ~clock;

always @ (negedge clock)
begin
	//this is a basic 3 bit counter
	if( cin == 1 )
	begin
		if ( B == 1 )
		begin
			A = ~A;
		end
		B = ~B;
	end
	A <= ~A;
	
	$display($time, "A, B, cin = %h", A, " %h", B, " %h", cin);
	#100
	$result($time, "cout = %h", cout, " sum = %h", sum);
end

initial
begin
		$display($time, "start the simulation");
		clock = 1'b0;
		//reg counter[2:0];
		
		//initialize inputs
		//counter = 3'b000;
		A = 1'b0;
		B = 1'b0;
		cin = 1'b0;
		
		//@(negedge clock);
		//counter = 3'b001;
		
		
end

//task call_fa;
//	input [2:0] counter;
//	begin
//		$display($time, "Loading the counter with %h", counter);
//		reg A = counter[0];
//		reg B = counter[1];
//		reg cin = counter[2];
//	end
//end
endmodule
