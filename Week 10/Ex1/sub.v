module sub(
	rs, rt, out
);

input [4:0] rs,rt;
output [31:0] out;

assign out = glob.r[rs] - glob.r[rt];

endmodule

