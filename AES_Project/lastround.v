module lastround(dataIN,dataOUT,keyF);
input [127:0]keyF;
input [127:0]dataIN;
output [127:0]dataOUT;

wire [127:0]SB;
wire [127:0]SR;

//SubByte
sub_byte sb(dataIN,SB);

//shiftrow
shift_row sr(SB,SR);

assign dataOUT[127:0]=SR[127:0] ^ keyF[127:0];

endmodule
