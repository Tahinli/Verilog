module encoder_using_if_test;
    parameter INPUT_LENGTH = 16;
    parameter OUTPUT_LENGTH = 4;

    reg [INPUT_LENGTH-1:0] input_wire;
    wire [OUTPUT_LENGTH-1:0] output_wire;
    reg enable = 0;

    initial begin
        #1 input_wire <= 16'h0000;
        #1 input_wire <= 16'h0002;
        #1 input_wire <= 16'h0004;
        #1 input_wire <= 16'h0008;
        #1 input_wire <= 16'h0010;
        #1 input_wire <= 16'h0020;
        #1 input_wire <= 16'h0040;
        #1 input_wire <= 16'h0080;
        #1 input_wire <= 16'h0100;
        #1 input_wire <= 16'h0200;
        #1 input_wire <= 16'h0400;
        #1 input_wire <= 16'h0800;
        #1 input_wire <= 16'h1000;
        #1 input_wire <= 16'h2000;
        #1 input_wire <= 16'h4000;
        #1 input_wire <= 16'h8000;
        #1 input_wire <= 16'h0000;
        #1 enable = 1;
        #1 input_wire <= 16'h0002;
        #1 input_wire <= 16'h0004;
        #1 input_wire <= 16'h0008;
        #1 input_wire <= 16'h0010;
        #1 input_wire <= 16'h0020;
        #1 input_wire <= 16'h0040;
        #1 input_wire <= 16'h0080;
        #1 input_wire <= 16'h0100;
        #1 input_wire <= 16'h0200;
        #1 input_wire <= 16'h0400;
        #1 input_wire <= 16'h0800;
        #1 input_wire <= 16'h1000;
        #1 input_wire <= 16'h2000;
        #1 input_wire <= 16'h4000;
        #1 input_wire <= 16'h8000;
        #1 $finish;
    end
    encoder_using_case c1(output_wire, input_wire, enable);
    initial
        $monitor("Time = %t, Input = %h (%0d), Output = %d (%0d)", $time, input_wire, input_wire, output_wire, output_wire);
endmodule