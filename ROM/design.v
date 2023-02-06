// Code your design here
module rom (
  input clk, 
  input en, 
  input [3:0] address, 
  output reg [3:0] data 
);
  
  reg [3:0] memory [15:0];
  
  initial //Initially storing values to each memeory locations
    begin    
      memory[0] = 4'b0010;
      memory[1] = 4'b0010;
      memory[2] = 4'b1110;
      memory[3] = 4'b0010;
      memory[4] = 4'b0100;
      memory[5] = 4'b1010;
      memory[6] = 4'b1100;
      memory[7] = 4'b0000;
      memory[8] = 4'b1010;
      memory[9] = 4'b0010;
      memory[10] = 4'b1110;
      memory[11] = 4'b0010;
      memory[12] = 4'b0100;
      memory[13] = 4'b1010;
      memory[14] = 4'b1100;
      memory[15] = 4'b0000;
    end    
  
  always @ (posedge clk) 
    begin
      if (en)
        data <= memory[address];
      else 
        data <= 4'bxxxx;
    end
endmodule