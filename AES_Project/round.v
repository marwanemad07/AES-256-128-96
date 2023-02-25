module round(dataIN,dataOUT,keyF);

input [127:0]keyF;
input [127:0]dataIN;
output [127:0]dataOUT;

wire [127:0]SB;
wire [127:0]SR;
wire [127:0]MX;

//SubByte
sub_byte sb(dataIN,SB);

//shiftrow
shift_row sr(SB,SR);

//MixColumn
mix_col mx(SR,MX);


assign dataOUT[127:0]=MX[127:0] ^ keyF[127:0];

endmodule