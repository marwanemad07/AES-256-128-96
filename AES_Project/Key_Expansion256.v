module Key_Expansion256(KeyI,rcon,KeyF);

input [255:0]KeyI;
input [31:0]rcon;
output [255:0]KeyF;
wire [255:0]temp1;
wire [255:0]temp2;
wire [255:0]temp3;

//******************first column**********************

//1-RotWord
assign temp1[255:248]=KeyI[23:16];
assign temp1[247:240]=KeyI[15:8];
assign temp1[239:232]=KeyI[7:0];
assign temp1[231:224]=KeyI[31:24];



//2-Subbytes
sbox a(temp1[255:248],temp2[255:248]);
sbox a1(temp1[247:240],temp2[247:240]);
sbox a2(temp1[239:232],temp2[239:232]);
sbox a3(temp1[231:224],temp2[231:224]);

 


//3-XOR and Rcon
assign KeyF[255:248]=temp2[255:248] ^ KeyI[255:248] ^ rcon[31:24];
assign KeyF[247:240]=temp2[247:240] ^ KeyI[247:240] ^ rcon[23:16];
assign KeyF[239:232]=temp2[240:232] ^ KeyI[239:232] ^ rcon[15:8];
assign KeyF[231:224]=temp2[231:224] ^ KeyI[231:224] ^ rcon[7:0];





//*********************second column**********************
assign KeyF[223:216]=KeyI[223:216] ^ KeyF[255:248];
assign KeyF[215:208]=KeyI[215:208] ^ KeyF[247:240];
assign KeyF[207:200]=KeyI[207:200] ^ KeyF[239:232];
assign KeyF[199:192]=KeyI[199:192] ^ KeyF[231:224];




//*********************third column**********************
assign KeyF[191:184]=KeyI[191:184] ^ KeyF[223:216];
assign KeyF[183:176]=KeyI[183:176] ^ KeyF[215:208];
assign KeyF[175:168]=KeyI[175:168] ^ KeyF[207:200];
assign KeyF[167:160]=KeyI[167:160] ^ KeyF[199:192];




//*********************fourth column**********************
assign KeyF[159:152]=KeyI[159:152] ^ KeyF[191:184];
assign KeyF[151:144]=KeyI[151:144] ^ KeyF[183:176];
assign KeyF[143:136]=KeyI[143:136] ^ KeyF[175:168];
assign KeyF[135:128]=KeyI[135:128] ^ KeyF[167:160];




//*********************fifth column**********************
sbox a4(KeyF[159:152],temp3[159:15]);
sbox a5(KeyF[151:144],temp3[151:144]);
sbox a6(KeyF[143:136],temp3[143:136]);
sbox a7(KeyF[135:128],temp3[135:128]);

assign KeyF[127:120]=KeyI[127:120] ^ temp3[159:15];
assign KeyF[119:112]=KeyI[119:112] ^ temp3[151:144];
assign KeyF[111:104]=KeyI[111:104] ^ temp3[143:136];
assign KeyF[103:96]=KeyI[103:96] ^ temp3[135:128];




//*********************sixth column**********************
assign KeyF[95:88]=KeyI[95:88] ^ KeyF[127:120];
assign KeyF[87:80]=KeyI[87:80] ^ KeyF[119:112];
assign KeyF[79:72]=KeyI[79:72] ^ KeyF[111:104];
assign KeyF[71:64]=KeyI[71:64] ^ KeyF[103:96];




//*********************seventh column************************
assign KeyF[63:56]=KeyI[63:56] ^ KeyF[95:88];
assign KeyF[55:48]=KeyI[55:48] ^ KeyF[87:80];
assign KeyF[47:40]=KeyI[47:40] ^ KeyF[79:72];
assign KeyF[39:32]=KeyI[39:32] ^ KeyF[71:64];



//**********************eighth column**********************
assign KeyF[31:24]=KeyI[31:24] ^ KeyF[63:56];
assign KeyF[23:16]=KeyI[23:16] ^ KeyF[55:48];
assign KeyF[15:8]=KeyI[15:8] ^ KeyF[47:40];
assign KeyF[7:0]=KeyI[7:0] ^ KeyF[39:32];

endmodule
