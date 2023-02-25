module tb();
reg [127:0]data;
wire [127:0]out1,out2,out3;

initial begin
data=128'h69c4e0d86a7b0430d8cdb78070b4c55a;
//key=128'h13aa29be9c8faff6f770f58000f7bf03;
end

//invround a(data,out1,key);
inversemain z(.datain1(data),.out1(out1),.out2(out2),.out3(out3));

endmodule