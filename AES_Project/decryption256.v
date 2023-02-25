module decryption256(datain,out,key0);

input [127:0]datain;
output [127:0]out;
input [255:0]key0;
wire [255:0]key1,key2,key3,key4,key5,key6,key7;

wire [127:0]RI0,RI1,RI2,RI3,RI4,RI5,RI6,RI7,RI8,RI9,RI10,RI11,RI12,RI13;



Key_Expansion256 qqq(.KeyI(key0),.rcon(32'h01000000),.KeyF(key1));
Key_Expansion256 qqq1(.KeyI(key1),.rcon(32'h02000000),.KeyF(key2));
Key_Expansion256 qqq2(.KeyI(key2),.rcon(32'h04000000),.KeyF(key3));
Key_Expansion256 qqq3(.KeyI(key3),.rcon(32'h08000000),.KeyF(key4));
Key_Expansion256 qqq4(.KeyI(key4),.rcon(32'h10000000),.KeyF(key5));
Key_Expansion256 qqq5(.KeyI(key5),.rcon(32'h20000000),.KeyF(key6));
Key_Expansion256 qqq6(.KeyI(key6),.rcon(32'h40000000),.KeyF(key7));



//Decryption
//round0
assign RI0=datain^key7[255:128];
//round1
invround rri1(.dataIN(RI0),.dataOUT(RI1),.keyF(key6[127:0]));
//round2
invround rri2(.dataIN(RI1),.dataOUT(RI2),.keyF(key6[255:128]));
//round3
invround rri3(.dataIN(RI2),.dataOUT(RI3),.keyF(key5[127:0]));
//round4
invround rri4(.dataIN(RI3),.dataOUT(RI4),.keyF(key5[255:128]));
//round5
invround rri5(.dataIN(RI4),.dataOUT(RI5),.keyF(key4[127:0]));
//round6
invround rri6(.dataIN(RI5),.dataOUT(RI6),.keyF(key4[255:128]));
//round7
invround rri7(.dataIN(RI6),.dataOUT(RI7),.keyF(key3[127:0]));
//round8
invround rri8(.dataIN(RI7),.dataOUT(RI8),.keyF(key3[255:128]));
//round9
invround rri9(.dataIN(RI8),.dataOUT(RI9),.keyF(key2[127:0]));
//round10
invround rri10(.dataIN(RI9),.dataOUT(RI10),.keyF(key2[255:128]));
//round11
invround rri11(.dataIN(RI10),.dataOUT(RI11),.keyF(key1[127:0]));
//round12
invround rri12(.dataIN(RI11),.dataOUT(RI12),.keyF(key1[255:128]));
//round13
invround rri13(.dataIN(RI12),.dataOUT(RI13),.keyF(key0[127:0]));
//round14
invlastround rri14(.dataIN(RI13),.dataOUT(out),.keyF(key0[255:128])); 


endmodule