// Code your design here
module dual_port_ram(
  input [7:0] data_p1, data_p2, 
  input [5:0] addr_p1, addr_p2,
  input wr_p1, wr_p2, 
  input clk, 
  output reg [7:0] out_p1, out_p2
);
  
  reg [7:0] ram [63:0]; //8*64 bit ram

 
  always @ (posedge clk)
    begin
      if(wr_p1)
        ram[addr_p1] <= data_p1;
      else
        out_p1 <= ram[addr_p1]; 
    end
  
  always @ (posedge clk)
    begin
      if(wr_p2)
        ram[addr_p2] <= data_p2;
      else
        out_p2 <= ram[addr_p2]; 
    end
  
endmodule