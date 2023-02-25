module invround(dataIN,dataOUT,keyF);

input [127:0]keyF;
input [127:0]dataIN;
output [127:0]dataOUT;
wire [127:0]SB,SR,MX;


//shiftrow
inshift_row sr(dataIN,SR);

//SubByte
insub_byte sb(SR,SB);


//add round key
assign MX[127:0]=SB[127:0] ^ keyF[127:0];

//MixColumn
inv_mix_col mx(MX,dataOUT);

endmodule