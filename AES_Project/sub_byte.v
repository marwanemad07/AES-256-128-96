module sub_byte(data, sb);
input [127:0] data;
output [127:0] sb;

sbox s1(data[127:120], sb[127:120]);
sbox s2(data[119:112], sb[119:112]);
sbox s3(data[111:104], sb[111:104]);
sbox s4(data[103:96], sb[103:96]);

sbox s5(data[95:88], sb[95:88]);
sbox s6(data[87:80], sb[87:80]);
sbox s7(data[79:72], sb[79:72]);
sbox s8(data[71:64], sb[71:64]);

sbox s9(data[63:56], sb[63:56]);
sbox s10(data[55:48], sb[55:48]);
sbox s11(data[47:40], sb[47:40]);
sbox s12(data[39:32], sb[39:32]);

sbox s13(data[31:24], sb[31:24]);
sbox s14(data[23:16], sb[23:16]);
sbox s15(data[15:8], sb[15:8]);
sbox s16(data[7:0], sb[7:0]);


endmodule