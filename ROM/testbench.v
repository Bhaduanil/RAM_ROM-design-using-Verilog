// Code your testbench here
// or browse Examples
module rom_tb;
  reg clk; 
  reg en; 
  reg [3:0] address; 
  wire [3:0] data; 
  
  rom r1(
    .clk(clk),
    .en(en),
    .address(address),
    .data(data)
  );
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1, rom_tb);       
      
      clk=1'b1;
      forever #5 clk = ~clk;
    end
  
  initial
    begin
      en = 1'b0;
      #10;                  
      
      en = 1'b1;      
      address = 4'b1100;
      #10;
      
      address = 4'b0110;
      #10;
      
      address = 4'b1011;
      #10;
      
      en = 1'b0;
      address = 4'b1011;
      #10;
            
      en = 1'b1;
      address = 4'b1001;
      #10;
      
      address = 4'b0000;
      #10;
      
      address = 4'bxxxx;
      #10;
    end
  
  initial
    begin
      #80 $stop;
    end
  
endmodule  