module wrapper_tb();
reg clk;
reg enable;
reg reset;
reg [1:0]bits;
wire led1;
wire led2;
wire led3;

localparam PERIOD=100;

initial 
begin
reset=1;
enable=1;
bits=2'b00;
clk=0;
#200; 
reset=0;
#200
bits=2'b01;
#200
bits=2'b10;
end


always
#(PERIOD/2) clk= ~clk;

wrapper uut(enable,clk,reset,bits,led1,led2,led3);




endmodule