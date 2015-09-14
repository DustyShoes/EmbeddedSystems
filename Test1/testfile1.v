module alu(
a,b,c,clk,reset_n
);

input wire a;
input wire b;
output reg c;
input clk;
input reset_n;


always begin if(!reset_n) begin
c <=1'b0;
end else begin
c <=a+b;
end
end


//assign c=a+b;
endmodule