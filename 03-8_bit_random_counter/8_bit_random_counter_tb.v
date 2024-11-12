module linear_feedback_shift_register_updown_test_bench();
 reg clk;
 reg reset;
 reg enable;
 reg up_down;

 wire [`WIDTH-1 : 0] count;
 wire overflow;

initial begin
  $monitor("Reset %b Enable %b Updown %b Count %b Overflow %b",
      reset,enable,up_down,count, overflow);
  clk = 0;
  reset = 1;
  enable = 0;
  up_down = 0;
  #5 reset = 0;
  #1 enable = 1;
  #5 up_down = 1;
  #30 $finish;
end

always #1 clk = ~clk;

linear_feedback_shift_register_updown c1(
.clk      ( clk      ),
.reset    ( reset    ),
.enable   ( enable   ),
.up_down  ( up_down  ),
.count    ( count    ),
.overflow ( overflow )
);

endmodule
