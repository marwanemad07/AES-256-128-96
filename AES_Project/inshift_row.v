module inshift_row(sub_byte, sr);

input [127:0]sub_byte;
output [127:0] sr;


assign sr[127:120] = sub_byte[127:120];

assign sr[119:112] = sub_byte[23:16];

assign sr[111:104] = sub_byte[47:40];

assign sr[103:96] = sub_byte[71:64];

assign sr[95:88] = sub_byte[95:88];

assign sr[87:80] = sub_byte[119:112];

assign sr[79:72] = sub_byte[15:8];

assign sr[71:64] = sub_byte[39:32];

assign sr[63:56] = sub_byte[63:56];

assign sr[55:48] = sub_byte[87:80];

assign sr[47:40] = sub_byte[111:104];

assign sr[39:32] = sub_byte[7:0];

assign sr[31:24] = sub_byte[31:24];

assign sr[23:16] = sub_byte[55:48];

assign sr[15:8] = sub_byte[79:72];

assign sr[7:0] = sub_byte[103:96];



endmodule