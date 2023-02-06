// Code your design here
module single_port_ram(input clk,wr,[7:0]data,[5:0]address,output [7:0] out);
  reg [7:0] ram [63:0];
  reg [5:0] addr_reg;
  always@(posedge clk)
  begin
    if(wr)
      ram[address]<=data;
    else
      addr_reg<=address;
  end
  assign out=ram[addr_reg];
endmodule
        