 module fulladder (s,co,a,b,ci);
    output s,co;
    input a,b,ci;
    xor1 u1(s,a,b,ci);
    and1 u2(n1,a,b);
    and1 u3(n2,b,ci);
    and1 u4(n3,a,ci);
    or1 u5(co,n1,n2,n3);
endmodule
