module mux(
	add_out, sub_out, srl_out, rd, funct
);

input [31:0] add_out, sub_out, srl_out;
input [4:0] rd;
input [5:0] funct;

always@ (*)
	begin
		case (funct)
			6'b100000: begin
				glob.r[rd] = add_out;
				end
			6'b100010: begin
				glob.r[rd] = sub_out;
				end
			6'b000010: begin
				glob.r[rd] = srl_out;
				end
		endcase
	end
endmodule

module srl(
	rt, shamt, rd
);

input [4:0] shamt, rt;
output [31:0] rd;

assign rd = glob.r[rt] >> shamt;

endmodule

module sub(
	rs, rt, rd
);

input [4:0] rs, rt;
output [31:0] rd;

assign rd = glob.r[rs] - glob.r[rt];

endmodule

module glob;

	//32 32-bit MIPS registers
	reg [31:0] r[0:31];

	initial begin: loop
	integer i;
  	for (i = 0; i < 32; i = i + 1)
  		r[i] = 32'b0000000000000000000000000000000;
	end

endmodule

module add(
	rs, rt, rd
);

input [4:0] rs, rt;
output [31:0] rd;

assign rd = glob.r[rt] + glob.r[rs];

endmodule

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

module alu_testbench;

// input and output test signals
reg [4:0] rs, rt, rd, shamt;
reg [5:0] funct;

glob glob(); //Initialize 32 32-bit registers to zeros
alu alu(rs, rt, rd, shamt, funct);

initial
begin
glob.r[0] = 32'b00000000000000000000000000000001;
glob.r[1] = 32'b00000000000000000000000000000010;
rs = 5'b00000;
rt = 5'b00001;
rd = 5'b00010;
funct = 6'b100000; //add
#5;
rs = 5'b00000;
rt = 5'b00010;
rd = 5'b00001;
#5;
rt = 5'b00001;
rd = 5'b00010;
shamt = 5'b00010;
funct = 6'b000010; //srl
#5;
rs = 5'b00001;
rt = 5'b00010;
rd = 5'b00000;
funct = 6'b100010; //sub
end

initial
$monitor("rs = %b rt = %b rd = %b r0 = %b r1 = %b r2 = %b funct = %b shamt = %b", rs, rt, rd, glob.r[0], glob.r[1], glob.r[2], funct, shamt);

initial
$dumpvars;

endmodule


