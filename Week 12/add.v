module add(
	rs, rt, rd
);

input [4:0] rs, rt;
output [31:0] rd;

assign rd = glob.r[rt] + glob.r[rs];

endmodule
