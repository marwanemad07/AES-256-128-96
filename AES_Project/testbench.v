module testbench();
reg clk;
reg [1:0]BITS;
reg [127:0]data,key1;
reg [191:0]key2;
reg [255:0]key3;
wire [127:0]out1,out2;
localparam PERIOD=10;

initial begin
data=128'h00112233445566778899aabbccddeeff;
BITS=2'b10;
clk=0;
key1=128'h000102030405060708090a0b0c0d0e0f;
key2=192'h000102030405060708090a0b0c0d0e0f1011121314151617;
key3=256'h000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f;
end

always
#(PERIOD/2) clk= ~clk;

main a(data,BITS,out1,out2,clk,key1,key2,key3);
endmodule
