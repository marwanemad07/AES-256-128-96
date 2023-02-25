module wrapper(enable,clk,reset,bits,led1,led2,led3);

input [1:0]bits;
wire [127:0]out1,out2,out3,out4,out5,out6;
input enable;
input reset;
input clk;
output reg led1=0;
output reg led2=0;
output reg led3=0;
reg t1=1;

reg [127:0]test1=128'h69c4e0d86a7b0430d8cdb78070b4c55a;
reg [127:0]test2=128'hdda97ca4864cdfe06eaf70a0ec0d7191;
reg [127:0]test3=128'h8ea2b7ca516745bfeafc49904b496089;
reg [127:0]data=128'h00112233445566778899aabbccddeeff;//input encryption
reg [127:0]key1=128'h000102030405060708090a0b0c0d0e0f;
reg [191:0]key2=192'h000102030405060708090a0b0c0d0e0f1011121314151617;
reg [255:0]key3=256'h000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f;

main a(data,bits,out1,out2,clk,key1,key2,key3);
main a1(data,bits,out3,out4,clk,key1,key2,key3);
main a2(data,bits,out5,out6,clk,key1,key2,key3);

always @(posedge clk) 
begin  
  if(enable)
  begin
  if(reset)
  begin
  led1=0;
  led2=0;
  led3=0;
  end
  else
  begin
  case(bits)
  0:begin
  if(out2==data&&out1==test1)
  begin
  led1=1;
  if(t1)
  begin
  $display("Successful");
  t1=0;
  end
  end
  else
  begin
  led1=0;
  end
  led2=0;
  led3=0;
  end
  1:begin
  if(out4==data&&out3==test2)
  begin
  led2=1;
  if(t1)
  begin
  $display("Successful");
  t1=0;
  end
  end
  else
  begin
  led2=0;
  end
  led1=0;
  led3=0;
  end
  2:begin
  if(out6==data&&out5==test3)
  begin
  led3=1;
  if(t1)
  begin
  $display("Successful");
  t1=0;
  end
  end
  else
  begin
  led3=0;
  end
  led1=0;
  led2=0;
  end
  endcase
  end
  end
end

endmodule