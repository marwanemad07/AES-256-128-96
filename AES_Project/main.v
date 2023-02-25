module main (datain1,bits,OUT1,OUT2,clock,k1,k2,k3);

input [127:0]k1;
input [191:0]k2;
input [255:0]k3;
input clock;
input [1:0]bits;
input [127:0]datain1;
output reg[127:0]OUT1,OUT2;
wire [127:0]out1,out2,out3,out4,out5,out6;

main128 a(datain1,out1,k1);
decryption128 a1(out1,out2,k1);
main192 b(datain1,out3,k2);
decryption192 b1(out3,out4,k2);
main256 c(datain1,out5,k3);
decryption256 c1(out5,out6,k3);

always@(posedge clock)
case(bits)
     0:begin
	  OUT1<=out1;
	  OUT2<=out2;
	  end
	  1:begin
	  OUT1<=out3;
	  OUT2<=out4;
	  end
	  2:begin
	  OUT1<=out5;
	  OUT2<=out6;
	  end
endcase


endmodule
	  
	  
	  