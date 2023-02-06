// Code your testbench here
// or browse Examples
module single_port_ram_tb;
  reg [7:0]data;
  reg [5:0] address;
  reg wr;
  reg clk;
  wire [7:0] out;
  
  single_port_ram tb(
    .clk(clk),
    .wr(wr),
    .data(data),
    .address(address),
    .out(out)
  );
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1,single_port_ram_tb);
      clk=1'b1;
      forever #5 clk=~clk;
    end
  
  initial
    begin
      data=8'h01;
      address=5'd1;
      wr=1'b1;
      #10
      data=8'h03;
      address=5'd0;
      
      #10
      data=8'h02;
      address=5'd3;
      
      #10
      address=5'd1;
       wr=1'b0;
      
      #10
      address=5'd3;
      
      #10
      address=5'd0;
      
      #10
     
      data=8'h06;
      address=5'd5;
       wr=1'b1;
      
      #10
      address=5'd3;
       wr=1'b0;
      
      #10
      data=8'h02;
      address=5'd5;
      
    end
  initial
    #100 $stop;
endmodule
      
  
  