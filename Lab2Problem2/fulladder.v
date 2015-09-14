 module fulladder (s,co,a,b,ci);
    output s;
	 output co;
    input a;
	 input b;
	 input ci;
	 
	 wire s;
	 wire co;
    wire a;
	 wire b;
	 wire ci;
	 
	 wire n1;
	 wire n2;
	 wire n3;
	 wire n4;
	 
    xor u1(s,a,b,ci);
    and u2(n1,a,b);
    and u3(n2,b,ci);
    and u4(n3,a,ci);
    or #10 u5(co,n1,n2,n3);
endmodule
