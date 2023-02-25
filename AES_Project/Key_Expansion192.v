module Key_Expansion192(KeyI,rcon,KeyF);

input [191:0]KeyI;
input [31:0]rcon;
output [191:0]KeyF;
wire [191:0]temp1;
wire [191:0]temp2;

//******************first column**********************

//1-RotWord
assign temp1[191:184]=KeyI[23:16];
assign temp1[183:176]=KeyI[15:8];
assign temp1[175:168]=KeyI[7:0];
assign temp1[167:160]=KeyI[31:24];



//2-Subbytes
sbox a(temp1[191:184],temp2[191:184]);
sbox a1(temp1[183:176],temp2[183:176]);
sbox a2(temp1[175:168],temp2[175:168]);
sbox a3(temp1[167:160],temp2[167:160]);

 


//3-XOR and Rcon
assign KeyF[191:184]=temp2[191:184] ^ KeyI[191:184] ^ rcon[31:24];
assign KeyF[183:176]=temp2[183:176] ^ KeyI[183:176] ^ rcon[23:16];
assign KeyF[175:168]=temp2[175:168] ^ KeyI[175:168] ^ rcon[15:8];
assign KeyF[167:160]=temp2[167:160] ^ KeyI[167:160] ^ rcon[7:0];





//*********************second column**********************
assign KeyF[159:152]=KeyI[159:152] ^ KeyF[191:184];
assign KeyF[151:144]=KeyI[151:144] ^ KeyF[183:176];
assign KeyF[143:136]=KeyI[143:136] ^ KeyF[175:168];
assign KeyF[135:128]=KeyI[135:128] ^ KeyF[167:160];




//*********************third column**********************
assign KeyF[127:120]=KeyI[127:120] ^ KeyF[159:152];
assign KeyF[119:112]=KeyI[119:112] ^ KeyF[151:144];
assign KeyF[111:104]=KeyI[111:104] ^ KeyF[143:136];
assign KeyF[103:96]=KeyI[103:96] ^ KeyF[135:128];




//*********************fourth column**********************
assign KeyF[95:88]=KeyI[95:88] ^ KeyF[127:120];
assign KeyF[87:80]=KeyI[87:80] ^ KeyF[119:112];
assign KeyF[79:72]=KeyI[79:72] ^ KeyF[111:104];
assign KeyF[71:64]=KeyI[71:64] ^ KeyF[103:96];




//*********************fifth column************************
assign KeyF[63:56]=KeyI[63:56] ^ KeyF[95:88];
assign KeyF[55:48]=KeyI[55:48] ^ KeyF[87:80];
assign KeyF[47:40]=KeyI[47:40] ^ KeyF[79:72];
assign KeyF[39:32]=KeyI[39:32] ^ KeyF[71:64];



//**********************sixth column**********************
assign KeyF[31:24]=KeyI[31:24] ^ KeyF[63:56];
assign KeyF[23:16]=KeyI[23:16] ^ KeyF[55:48];
assign KeyF[15:8]=KeyI[15:8] ^ KeyF[47:40];
assign KeyF[7:0]=KeyI[7:0] ^ KeyF[39:32];

endmodule
