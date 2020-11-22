module srl(
	rt, shamt, rd
);

input [4:0] shamt, rt;
output [31:0] rd;

assign rd = glob.r[rt] >> shamt;

endmodule
