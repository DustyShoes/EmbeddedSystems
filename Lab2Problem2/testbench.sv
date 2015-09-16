//'timescale 1 ns /100 ps
module testbench ();
// Inputs
reg Select[2:0];
reg A [3:0];
reg B [3:0];
reg C;
reg clock;
reg reset;

// Outputs
wire out [3:0];
wire cout;

// Instantiate the unit under test
Lab2Problem2 test (
	.Select(Select),
	.A(A), 
	.B(B), 
	.C(C), 
	.RegOut(out), 
	.Carryout(cout), 
	.clock(clock), 
	.reset(reset)
);

//clock
always #200 clock = ~clock;

always @ (posedge clock) begin
	if (reset == 1) begin
		if( Select[2] == 1) begin
			if (Select[1] == 1) begin
				if(Select[0] == 1) begin
					if (A[3] == 1) begin
						if (A[2] == 1) begin
							if (A[1] == 1) begin
								if (A[0] == 1) begin
									if (B[3] == 1) begin
										if (B[2] == 1) begin
											if (B[1] == 1) begin
												if (B[0] == 1) begin
													if(C == 1) begin
														reset = 1'b0;
														Select[0] = 0;
														Select[1] = 0;
														Select[2] = 0;
														C = 1'b0;
														B[0] = 0;
														B[1] = 0;
														B[2] = 0;
														B[3] = 0;
														A[0] = 0;
														A[1] = 0;
														A[2] = 0;
														A[3] = 0;
													end
													C = ~C;
												end
												B[0] = ~B[0];
											end
											B[1] = ~B[0];
										end
										B[2] = ~B[0];
									end
									B[3] = ~B[0];
								end
								A[0] = ~A[3];
							end
							A[1] = ~A[3];
						end
						A[2] = ~A[3];						
					end
					A[3] = ~A[3];
				end
				Select[0] = ~Select[0];
			end
			Select[1] = ~Select[1];
		end
		Select[2] = ~Select[2];
	end
	reset = ~reset;
end

initial begin
	// initialize inputs
	reset = 1'b0;
	Select[0] = 0;
	Select[1] = 0;
	Select[2] = 0;
	C = 1'b0;
	B[0] = 0;
	B[1] = 0;
	B[2] = 0;
	B[3] = 0;
	A[0] = 0;
	A[1] = 0;
	A[2] = 0;
	A[3] = 0;
	clock = 0;
	reset = 0;
end


endmodule
