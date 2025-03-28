// Code your testbench here
// or browse Examples
module tb;
  reg i,sel;
  wire y0,y1;
  demux1to2 uut(
    .sel(sel),
    .i(i),
    .y0(y0),
    .y1(y1)
  );
  initial begin
    $dumpfile("demux1to2.vcd");
    $dumpvars();
  end
  initial begin
    $monitor("time=%ot, sel=%b,i=%b,y0=%b, y1=%b",$time,sel,i,y0,y1);
    sel=0; i=0; #1;
    sel=0; i=1; #1;
    sel=1; i=0; #1;
    sel=1; i=1; #1;
  end
endmodule
