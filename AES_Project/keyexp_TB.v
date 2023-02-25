module keyexp_TB ();
//reg [127:0] keyi;
//wire [127:0] keyf;
reg [191:0]key0;
wire [191:0]key1;
wire [127:0]key2;
wire [127:0]key3;
wire [127:0]key4;
wire [127:0]key5;
wire [127:0]key6;
wire [127:0]key7;
wire [127:0]key8;
wire [127:0]key9;
wire [127:0]key10;
wire [127:0]key11;
wire [127:0]key12;
wire [127:0]key13;
wire [127:0]key14;




Key_Expansion192 K1(.KeyI(key0),.rcon(32'h01000000),.KeyF(key1));
/*Key_Expansion K2(.KeyI(key1),.rcon(32'h02000000),.KeyF(key2));
Key_Expansion K3(.KeyI(key2),.rcon(32'h04000000),.KeyF(key3));
Key_Expansion K4(.KeyI(key3),.rcon(32'h08000000),.KeyF(key4));
Key_Expansion K5(.KeyI(key4),.rcon(32'h10000000),.KeyF(key5));
Key_Expansion K6(.KeyI(key5),.rcon(32'h20000000),.KeyF(key6));
Key_Expansion K7(.KeyI(key6),.rcon(32'h40000000),.KeyF(key7));
Key_Expansion K8(.KeyI(key7),.rcon(32'h80000000),.KeyF(key8));
Key_Expansion K9(.KeyI(key8),.rcon(32'h1b000000),.KeyF(key9));
Key_Expansion K10(.KeyI(key9),.rcon(32'h36000000),.KeyF(key10));
*/
initial
begin

key0=192'h000102030405060708090a0b0c0d0e0f1011121314151617;

end

endmodule








/*
Key_Expansion K11(.KeyI(key10),.rcon(32'h01000000),.KeyF(key11));
Key_Expansion K12(.KeyI(key11),.rcon(32'h01000000),.KeyF(key12));
Key_Expansion K13(.KeyI(key12),.rcon(32'h01000000),.KeyF(key13));
Key_Expansion K14(.KeyI(key13),.rcon(32'h01000000),.KeyF(key14));





*/