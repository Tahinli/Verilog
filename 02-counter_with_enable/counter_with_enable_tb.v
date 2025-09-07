module counter_with_enable_tb;
    parameter WIDTH = 8;
    reg reset = 0;
    reg enable = 0;
    initial begin
        #17 reset = 1;
        #11 enable = 1;
        #17 reset = 0;
        #11 enable = 1;
        #17 reset = 1;
        #17 $stop;
    end

    reg clk = 0;
    always begin
        #1 clk = 0;
        #1 clk = 1;
    end
    wire[WIDTH-1:0] output_wire;
    counter_with_enable c1(output_wire, enable, clk, reset);
    initial 
        $monitor("Time = %t, Value = %h (%0d)", $time, output_wire, output_wire);
endmodule