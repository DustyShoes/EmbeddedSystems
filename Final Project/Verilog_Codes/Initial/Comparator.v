
module Comparator(
  input 	[3:0]	A  , // A Data Input
  input 	[3:0]	B  ,   // B Clock Input
  output reg F  // F output 
  );
  
  always @( A or B)
begin
  if (A>B)
     F <= 1'b1;
  else
    F <= 1'b0;
end

  endmodule 