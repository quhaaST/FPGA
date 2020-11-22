module sub(
	rs, rt, rd
);

input [4:0] rs, rt;
output [31:0] rd;

assign rd = glob.r[rs] - glob.r[rt];

endmodule
