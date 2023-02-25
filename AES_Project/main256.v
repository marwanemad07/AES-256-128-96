module main256(datain1,out1,key0);

input [127:0]datain1;
output [127:0]out1;
input [255:0]key0;
wire [255:0]key1,key2,key3,key4,key5,key6,key7;


wire [127:0]R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13;




Key_Expansion256 qqq(.KeyI(key0),.rcon(32'h01000000),.KeyF(key1));
Key_Expansion256 qqq1(.KeyI(key1),.rcon(32'h02000000),.KeyF(key2));
Key_Expansion256 qqq2(.KeyI(key2),.rcon(32'h04000000),.KeyF(key3));
Key_Expansion256 qqq3(.KeyI(key3),.rcon(32'h08000000),.KeyF(key4));
Key_Expansion256 qqq4(.KeyI(key4),.rcon(32'h10000000),.KeyF(key5));
Key_Expansion256 qqq5(.KeyI(key5),.rcon(32'h20000000),.KeyF(key6));
Key_Expansion256 qqq6(.KeyI(key6),.rcon(32'h40000000),.KeyF(key7));

//Encryption
//round0
assign R0=datain1^key0[255:128];
//round1
round rr1(.dataIN(R0),.dataOUT(R1),.keyF(key0[127:0]));
//round2
round rr2(.dataIN(R1),.dataOUT(R2),.keyF(key1[255:128]));
//round3
round rr3(.dataIN(R2),.dataOUT(R3),.keyF(key1[127:0]));
//round4
round rr4(.dataIN(R3),.dataOUT(R4),.keyF(key2[255:128]));
//round5
round rr5(.dataIN(R4),.dataOUT(R5),.keyF(key2[127:0]));
//round6
round rr6(.dataIN(R5),.dataOUT(R6),.keyF(key3[255:128]));
//round7
round rr7(.dataIN(R6),.dataOUT(R7),.keyF(key3[127:0]));
//round8
round rr8(.dataIN(R7),.dataOUT(R8),.keyF(key4[255:128]));
//round9
round rr9(.dataIN(R8),.dataOUT(R9),.keyF(key4[127:0]));
//round10
round rr10(.dataIN(R9),.dataOUT(R10),.keyF(key5[255:128]));
//round11
round rr11(.dataIN(R10),.dataOUT(R11),.keyF(key5[127:0]));
//round12
round rr12(.dataIN(R11),.dataOUT(R12),.keyF(key6[255:128]));
//round13
round rr13(.dataIN(R12),.dataOUT(R13),.keyF(key6[127:0]));
//round14
lastround rr14(.dataIN(R13),.dataOUT(out1),.keyF(key7[255:128])); 



endmodule