// Code your testbench here
// or browse Examples
module dual_port_ram_tb;
  reg [7:0] data_p1, data_p2;
  reg [5:0] addr_p1, addr_p2; 
  reg wr_p1, wr_p2; 
  reg clk; 
  wire [7:0] out_p1, out_p2; 
  
  dual_port_ram tb(
    .data_p1(data_p1),
    .data_p2(data_p2),
    .addr_p1(addr_p1),
    .addr_p2(addr_p2),
    .wr_p1(wr_p1),
    .wr_p2(wr_p2),
    .clk(clk),
    .out_p1(out_p1),
    .out_p2(out_p2)
  );
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1, dual_port_ram_tb);       
      
      clk=1'b1;
      forever #5 clk = ~clk;
    end
  
  initial
    begin
      data_p1 = 8'h45;
      addr_p1 = 6'h01;
      
      data_p2 = 8'h32;
      addr_p2 = 6'h02;
      
      wr_p1 = 1'b1;
      wr_p2 = 1'b1;
      
      #10;
      
      data_p1 = 8'h24;
      addr_p1 = 6'h03;
      
      addr_p2 = 6'h01;
      
      wr_p2 = 1'b0;
      
      #10;          
            
      addr_p1 = 6'h02;
      
      addr_p2 = 6'h03;
      
      wr_p1 = 1'b0;
      
      #10;
      
      addr_p1 = 6'h01;
      
      data_p2 = 8'h10;
      addr_p2 = 6'h02;
      
      wr_p2 = 1'b1;
      
      #10;
    end
  
  initial	
    #40 $stop;
  
endmodule