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
