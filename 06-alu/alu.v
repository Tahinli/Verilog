`define ADD 4'd0
`define LESS 4'd1
`define EQ 4'd2
`define OR 4'd3
`define AND 4'd4
`define NOT 4'd5
`define MUL 4'd6
`define DIV 4'd7
`define MOD 4'd8

module ALU(opcode, op_a, op_b, result);
parameter N = 32;
input [3:0] opcode;
input [N-1:0] op_a, op_b;
output [N-1:0] result;

reg [N-1:0] result;

always @* begin
    case (opcode)
    `ADD: result = op_a + op_b;
    `LESS: result = op_a < op_b;
    `EQ: result = op_a == op_b;
    `OR: result = op_a | op_b;
    `AND: result = op_a & op_b;
    `NOT: result = !op_a;
    `MUL: result = op_a * op_b;
    `DIV: result = op_a / op_b;
    `MOD: result = op_a % op_b;
    default: result = 0;
    endcase
end

endmodule