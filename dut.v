// Code your design here
module add(a,b,sum,clk );
  input [3:0] a,b ;
  output reg [4:0] sum ; 
  input clk ;
  
  always@(posedge clk ) begin 
    sum=a+b ;
  end
endmodule
