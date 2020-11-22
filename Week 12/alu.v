module alu(
	rs, rt, rd, shamt, funct
);

input [4:0] rs, rt, rd, shamt;
input [5:0] funct;

wire [31:0] add_out, sub_out, srl_out;

add add(rs, rt, add_out);
sub sub(rs, rt, sub_out);
srl srl(rt, shamt, srl_out);

mux mux(add_out, sub_out, srl_out, rd, funct);

endmodule
