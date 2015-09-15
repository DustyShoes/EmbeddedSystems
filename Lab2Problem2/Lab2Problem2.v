////`include "fulladder.v"
//module Lab2Problem2 (Select, A, B, C, RegOut, Carryout, clock, reset);
//
//input [2:0] Select;
//input [3:0] A;
//input [3:0] B;
//input [3:0] C;
//input clock;
//input reset;
//
//output [3:0] RegOut;
//output Carryout;
//
//wire [2:0] Select;
//wire [3:0] A;
//wire [3:0] B;
//wire [3:0] C;
//wire clock;
//wire reset;
//wire [3:0] RegOut;
//wire Carryout;
//
////inverse select
//wire nSelect[2:0];
//
////alu modes
//wire zero;
//wire one;
//wire two;
//wire three;
//wire four;
//wire five;
//wire six;
//wire seven;
//
//not (nSelect[0], Select[0]);
//not (nSelect[1], Select[1]);
//not (nSelect[2], Select[2]);
//and #10 (zero, nSelect[0], nSelect[1], nSelect[2]);
//and #10 (one, nSelect[0], nSelect[1], Select[2]);
//and #10 (two, nSelect[0], Select[1], nSelect[2]);
//and #10 (three, nSelect[0], Select[1], Select[2]);
//and #10 (four, nSelect[0], nSelect[1], nSelect[2]);
//and #10 (five, nSelect[0], nSelect[1], Select[2]);
//and #10 (six, nSelect[0], Select[1], nSelect[2]);
//and #10 (seven, nSelect[0], Select[1], Select[2]);
//
////mode zero 000 - not A
//wire RegOutZero[3:0];
//wire notA[3:0];
//not #20 (notA[0], A[0]);
//not #20 (notA[1], A[1]);
//not #20 (notA[2], A[2]);
//not #20 (notA[3], A[3]);
//and #30 (RegOutZero[0], notA[0], zero);
//and #30 (RegOutZero[1], notA[1], zero);
//and #30 (RegOutZero[2], notA[2], zero);
//and #30 (RegOutZero[3], notA[3], zero);
//
////mode one 001 - A+B+C
//wire RegOutOne [3:0];
//wire sumAB [3:0];
//wire carryAB;
//wire sumABC[3:0];
//wire carryABC;
//wire CarryoutOne;
//fulladder3bits fulladderAB (
//	.inA(A),
//	.inB(B),
//	.cin(0),
//	.cout(carryAB),
//	.sum(sumAB)
//);
//fulladder3bits #100 fulladderABC (
//	.inA(sumABin),
//	.inB(C),
//	.cin(carryAB),
//	.cout(CarryoutOne),
//	.sum(RegOutOne)
//);
//and #200 (RegOutOne[0], sumABC[0], one);
//and #200 (RegOutOne[1], sumABC[1], one);
//and #200 (RegOutOne[2], sumABC[2], one);
//and #200 (RegOutOne[3], sumABC[3], one);
//and #200 (CarryoutOne, carryABC, one);
//
////mode two 010 - A and B
//wire RegOutTwo[3:0];
//wire andAB[3:0];
//and #20 (andAB[0], A[0], B[0]);
//and #20 (andAB[1], A[1], B[1]);
//and #20 (andAB[2], A[2], B[2]);
//and #20 (andAB[3], A[3], B[3]);
//and #30 (RegOutTwo[0], andAB[0], two);
//and #30 (RegOutTwo[1], andAB[1], two);
//and #30 (RegOutTwo[2], andAB[2], two);
//and #30 (RegOutTwo[3], andAB[3], two);
//
////mode three 011 - A or B
//wire RegOutThree[3:0];
//wire orAB[3:0];
//or #20 (orAB[0], A[0], B[0]);
//or #20 (orAB[1], A[1], B[1]);
//or #20 (orAB[2], A[2], B[2]);
//or #20 (orAB[3], A[3], B[3]);
//and #30 (RegOutThree[0], orAB[0], three);
//and #30 (RegOutThree[1], orAB[1], three);
//and #30 (RegOutThree[2], orAB[2], three);
//and #30 (RegOutThree[3], orAB[3], three);
//
////mode four 100 - A xor B
//wire RegOutFour[3:0];
//wire xorAB[3:0];
//xor #20 (xorAB[0], A[0], B[0]);
//xor #20 (xorAB[1], A[1], B[1]);
//xor #20 (xorAB[2], A[2], B[2]);
//xor #20 (xorAB[3], A[3], B[3]);
//xor #30 (RegOutFour[0], xorAB[0], four);
//xor #30 (RegOutFour[1], xorAB[1], four);
//xor #30 (RegOutFour[2], xorAB[2], four);
//xor #30 (RegOutFour[3], xorAB[3], four);
//
////mode five 101 - rotate A
//wire RegOutFive[3:0];
//wire CarryoutFive;
//and #20 (RegOutFive[0], C[0], five);
//and #20 (RegOutFive[1], A[0], five);
//and #20 (RegOutFive[2], A[1], five);
//and #20 (RegOutFive[3], A[2], five);
//and #20 (CarryoutFive, A[3], five);
//
////mode six 110 - 0
//wire RegOutSix[3:0];
//and #20 (RegOutSix[0], 0, six);
//and #20 (RegOutSix[1], 0, six);
//and #20 (RegOutSix[2], 0, six);
//and #20 (RegOutSix[3], 0, six);
//
////mode seven 111 - 1
//wire RegOutSeven[3:0];
//and #20 (RegOutSeven[0], 1, seven);
//and #20 (RegOutSeven[1], 1, seven);
//and #20 (RegOutSeven[2], 1, seven);
//and #20 (RegOutSeven[3], 1, seven);
//
//or #210 (RegOut[0], RegOutZero[0], RegOutOne[0], RegOutTwo[0], RegOutThree[0], RegOutFour[0], RegOutFive[0], RegOutSix[0], RegOutSeven[0]);
//or #210 (RegOut[1], RegOutZero[1], RegOutOne[1], RegOutTwo[1], RegOutThree[1], RegOutFour[1], RegOutFive[1], RegOutSix[1], RegOutSeven[1]);
//or #210 (RegOut[2], RegOutZero[2], RegOutOne[2], RegOutTwo[2], RegOutThree[2], RegOutFour[2], RegOutFive[2], RegOutSix[2], RegOutSeven[2]);
//or #210 (RegOut[3], RegOutZero[3], RegOutOne[3], RegOutTwo[3], RegOutThree[3], RegOutFour[3], RegOutFive[3], RegOutSix[3], RegOutSeven[3]);
//or #210 (Carryout, CarryoutOne, CarryoutFive);
//
//endmodule
