module insub_byte(data, sb);
input [127:0] data;
output [127:0] sb;

insbox s1(data[127:120], sb[127:120]);
insbox s2(data[119:112], sb[119:112]);
insbox s3(data[111:104], sb[111:104]);
insbox s4(data[103:96], sb[103:96]);

insbox s5(data[95:88], sb[95:88]);
insbox s6(data[87:80], sb[87:80]);
insbox s7(data[79:72], sb[79:72]);
insbox s8(data[71:64], sb[71:64]);

insbox s9(data[63:56], sb[63:56]);
insbox s10(data[55:48], sb[55:48]);
insbox s11(data[47:40], sb[47:40]);
insbox s12(data[39:32], sb[39:32]);

insbox s13(data[31:24], sb[31:24]);
insbox s14(data[23:16], sb[23:16]);
insbox s15(data[15:8], sb[15:8]);
insbox s16(data[7:0], sb[7:0]);


endmodule