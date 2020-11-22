module  mux (
	input [31:0] res_add, res_sub, res_srl,
	input [4:0] rd,
	input [5:0] funct
);
always@ (*)
	begin
		case (funct)
			6'b100000: glob.r[rd] = res_add;
			6'b100010: glob.r[rd] = res_sub;
			6'b000010: glob.r[rd] = res_srl;
		endcase
	end
endmodule

