module Key_Expansion (KeyI,rcon,KeyF);

input [127:0]KeyI;
input [31:0]rcon;
output [127:0]KeyF;
wire [127:0]temp1,temp2;



//******************first column**********************

//1-RotWord
assign temp1[127:120]=KeyI[23:16];
assign temp1[119:112]=KeyI[15:8];
assign temp1[111:104]=KeyI[7:0];
assign temp1[103:96]=KeyI[31:24];



//2-Subbytes
sbox a(temp1[127:120],temp2[127:120]);
sbox a1(temp1[119:112],temp2[119:112]);
sbox a2(temp1[111:104],temp2[111:104]);
sbox a3(temp1[103:96],temp2[103:96]);

 


//3-XOR and Rcon
assign KeyF[127:120]=temp2[127:120] ^ KeyI[127:120] ^ rcon[31:24];
assign KeyF[119:112]=temp2[119:112] ^ KeyI[119:112] ^ rcon[23:16];
assign KeyF[111:104]=temp2[111:104] ^ KeyI[111:104] ^ rcon[15:8];
assign KeyF[103:96]=temp2[103:96] ^ KeyI[103:96] ^ rcon[7:0];






//*********************second column**********************
assign KeyF[95:88]=KeyI[95:88] ^ KeyF[127:120];
assign KeyF[87:80]=KeyI[87:80] ^ KeyF[119:112];
assign KeyF[79:72]=KeyI[79:72] ^ KeyF[111:104];
assign KeyF[71:64]=KeyI[71:64] ^ KeyF[103:96];




//*********************third column************************
assign KeyF[63:56]=KeyI[63:56] ^ KeyF[95:88];
assign KeyF[55:48]=KeyI[55:48] ^ KeyF[87:80];
assign KeyF[47:40]=KeyI[47:40] ^ KeyF[79:72];
assign KeyF[39:32]=KeyI[39:32] ^ KeyF[71:64];



//**********************fourth column**********************
assign KeyF[31:24]=KeyI[31:24] ^ KeyF[63:56];
assign KeyF[23:16]=KeyI[23:16] ^ KeyF[55:48];
assign KeyF[15:8]=KeyI[15:8] ^ KeyF[47:40];
assign KeyF[7:0]=KeyI[7:0] ^ KeyF[39:32];

endmodule