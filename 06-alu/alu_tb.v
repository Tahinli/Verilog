module alu_tb;

parameter N = 32;
reg [N-1:0] op_a;
reg [N-1:0] op_b;
reg [3:0] opcode;
wire [N-1:0] result;

initial begin
    opcode = 3'd0;
    op_a = 2;
    op_b = 3;
    #2 opcode = 4'd1;
    #2 opcode = 4'd2;
    #2 opcode = 4'd3;
    #2 opcode = 4'd4;
    #2 opcode = 4'd5;
    #2 opcode = 4'd6;
    #2 opcode = 4'd7;
    #2 opcode = 4'd8;
    #2 opcode = 4'd8;
end

ALU c1 (opcode, op_a, op_b, result);

initial
 $monitor("Opcode = %h | Op A = %h | Op B = %h | Result = %h", opcode, op_a, op_b,result);

endmodule