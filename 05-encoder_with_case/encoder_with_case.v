module encoder_using_case(
output_wire,
input_wire,
enable,
);
output [3:0] output_wire;
input  enable ; 
input [15:0] input_wire; 
     
reg [3:0] output_wire;
      
always @ (enable or input_wire)
begin
  output_wire = 0;
  if (enable) begin
    case (input_wire) 
      16'h0002 : output_wire = 1; 
      16'h0004 : output_wire = 2; 
      16'h0008 : output_wire = 3; 
      16'h0010 : output_wire = 4;
      16'h0020 : output_wire = 5; 
      16'h0040 : output_wire = 6; 
      16'h0080 : output_wire = 7; 
      16'h0100 : output_wire = 8;
      16'h0200 : output_wire = 9;
      16'h0400 : output_wire = 10; 
      16'h0800 : output_wire = 11; 
      16'h1000 : output_wire = 12; 
      16'h2000 : output_wire = 13; 
      16'h4000 : output_wire = 14; 
      16'h8000 : output_wire = 15; 
   endcase
  end
end

endmodule
