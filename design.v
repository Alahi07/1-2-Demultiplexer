// Code your design here
module demux2to1(
  input wire din,
  input wire sel,
  output wire y0,
  output wire y1);
  assign y0= (sel==0)? din:0;
  assign y1= (sel==1)? din:0;
endmodule
