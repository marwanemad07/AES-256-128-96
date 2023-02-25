module invlastround(dataIN,dataOUT,keyF);
input [127:0]keyF;
input [127:0]dataIN;
output [127:0]dataOUT;

wire [127:0]SB;
wire [127:0]SR;

//shiftrow
inshift_row sr(dataIN,SR);

//SubByte
insub_byte sb(SR,SB);


//add round key
assign dataOUT[127:0]=SB[127:0] ^ keyF[127:0];


endmodule