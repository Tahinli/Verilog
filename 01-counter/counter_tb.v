module counter_test;
    reg reset = 0;
    initial begin
        #17 reset = 1;
        #11 reset = 0;
        #17 reset = 1;
        #11 reset = 0;
        #17 $stop;
    end

    reg clk = 0;
    always #5 clk = !clk;

    wire [7:0] value;
    counter c1(value, clk, reset);
    initial
        $monitor("Time = %t, Value = %h (%0d)", $time, value, value);
endmodule