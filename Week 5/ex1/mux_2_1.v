module ex1 (x1, x2, x3, x4, s1, s2, out);

input wire x1, x2, x3, x4, s1, s2;
output reg out;

always @ (x1 or x2 or x3 or x4 or s1, s2)
begin
	case (s1 | s2)
		2'b00 : out <= x1;
		2'b01 : out <= x2;
		2'b10 : out <= x3;
		2'b11 : out <= x4;
	endcase

end
	
endmodule