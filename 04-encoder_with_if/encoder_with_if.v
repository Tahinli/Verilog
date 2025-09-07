module encoder_using_if(
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
     if (input_wire == 16'h0002) begin
      output_wire = 1;
     end  if (input_wire == 16'h0004) begin 
      output_wire = 2; 
     end  if (input_wire == 16'h0008) begin 
      output_wire = 3; 
     end  if (input_wire == 16'h0010) begin 
      output_wire = 4; 
     end  if (input_wire == 16'h0020) begin 
      output_wire = 5; 
     end  if (input_wire == 16'h0040) begin 
      output_wire = 6; 
     end  if (input_wire == 16'h0080) begin 
      output_wire = 7; 
     end  if (input_wire == 16'h0100) begin 
      output_wire = 8; 
     end  if (input_wire == 16'h0200) begin 
      output_wire = 9; 
     end if (input_wire == 16'h0400) begin 
      output_wire = 10; 
     end  if (input_wire == 16'h0800) begin 
      output_wire = 11; 
     end  if (input_wire == 16'h1000) begin
      output_wire = 12; 
     end  if (input_wire == 16'h2000) begin 
      output_wire = 13;
     end  if (input_wire == 16'h4000) begin 
      output_wire = 14; 
     end if (input_wire == 16'h8000) begin 
      output_wire = 15; 
     end
  end
end
      
endmodule
