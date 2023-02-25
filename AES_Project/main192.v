module main192(datain1,out1,ke0);

input [127:0]datain1;
output [127:0]out1;
input [191:0]ke0;
wire [191:0]ke1,ke2,ke3,ke4,ke5,ke6,ke7,ke8;

wire [127:0]R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12;


Key_Expansion192 qq(.KeyI(ke0),.rcon(32'h01000000),.KeyF(ke1));
Key_Expansion192 qq1(.KeyI(ke1),.rcon(32'h02000000),.KeyF(ke2));
Key_Expansion192 qq2(.KeyI(ke2),.rcon(32'h04000000),.KeyF(ke3));
Key_Expansion192 qq3(.KeyI(ke3),.rcon(32'h08000000),.KeyF(ke4));
Key_Expansion192 qq4(.KeyI(ke4),.rcon(32'h10000000),.KeyF(ke5));
Key_Expansion192 qq5(.KeyI(ke5),.rcon(32'h20000000),.KeyF(ke6));
Key_Expansion192 qq6(.KeyI(ke6),.rcon(32'h40000000),.KeyF(ke7));
Key_Expansion192 qq7(.KeyI(ke7),.rcon(32'h80000000),.KeyF(ke8));


//Encryption
//round0
assign R0=datain1^ke0[191:64];
//round1
round rr1(.dataIN(R0),.dataOUT(R1),.keyF({ke0[63:0],ke1[191:128]}));
//round2
round rr2(.dataIN(R1),.dataOUT(R2),.keyF(ke1[127:0]));
//round3
round rr3(.dataIN(R2),.dataOUT(R3),.keyF(ke2[191:64]));
//round4
round rr4(.dataIN(R3),.dataOUT(R4),.keyF({ke2[63:0],ke3[191:128]}));
//round5
round rr5(.dataIN(R4),.dataOUT(R5),.keyF(ke3[127:0]));
//round6
round rr6(.dataIN(R5),.dataOUT(R6),.keyF(ke4[191:64]));
//round7
round rr7(.dataIN(R6),.dataOUT(R7),.keyF({ke4[63:0],ke5[191:128]}));
//round8
round rr8(.dataIN(R7),.dataOUT(R8),.keyF(ke5[127:0]));
//round9
round rr9(.dataIN(R8),.dataOUT(R9),.keyF(ke6[191:64]));
//round10
round rr10(.dataIN(R9),.dataOUT(R10),.keyF({ke6[63:0],ke7[191:128]}));
//round11
round rr11(.dataIN(R10),.dataOUT(R11),.keyF(ke7[127:0]));
//round12
lastround rr12(.dataIN(R11),.dataOUT(out1),.keyF(ke8[191:64]));


endmodule