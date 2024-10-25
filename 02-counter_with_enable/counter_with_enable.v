module counter_with_enable(out, enable, clk, reset);
    parameter WIDTH = 8;
    input enable, clk, reset;
    output[WIDTH-1:0] out;
    reg[WIDTH-1:0] out;

    always @(posedge clk)begin
        if (reset) begin
            out <= 8'b0;
        end else if(enable) begin
            out <= out + 1;
        end
    end
endmodule