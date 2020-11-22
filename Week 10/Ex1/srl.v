
module srl(
	rt, shamt, out
);

input [4:0] shamt, rt;
output [31:0] out;

assign out = glob.r[rt] >> shamt;

endmodule
