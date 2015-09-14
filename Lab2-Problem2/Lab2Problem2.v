module Lab2Problem2 (Select, A, B, C, RegOut, Carryout, clock, reset);

input [2:0] Select;
input [3:0] A;
input [3:0] B;
input [3:0] C;
input clock;
input reset;

output [3:0] RegOut;
output Carryout;

wire [2:0] Select;
wire [3:0] A;
wire [3:0] B;
wire [3:0] C;
wire clock;
wire reset;
wire [3:0] RegOut;
wire Carryout;

//inverse select
wire nSelect[2:0];

//alu modes
wire zero;
wire one;
wire two;
wire three;
wire four;
wire five;
wire six;
wire seven;

not (nSelect[0], Select[0]);
not (nSelect[1], Select[1]);
not (nSelect[2], Select[2]);
and #10 (zero, nSelect0, nSelect1, nSelect2);
and #10 (one, nSelect0, nSelect1, Select2);
and #10 (two, nSelect0, Select1, nSelect2);
and #10 (three, nSelect0, Select1, Select2);
and #10 (four, nSelect0, nSelect1, nSelect2);
and #10 (five, nSelect0, nSelect1, Select2);
and #10 (six, nSelect0, Select1, nSelect2);
and #10 (seven, nSelect0, Select1, Select2);

//todo: need to call other modules/things from each wire zero, one, etc

endmodule
