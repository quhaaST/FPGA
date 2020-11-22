module alu
(
     rs, rt, rd, shamt, funct
);

input   [4:0]  rs, rt, rd;
input	  [4:0]  shamt; 
input	  [5:0]  funct;
wire 	  [31:0] res1, res2, res3;

add add(rs, rt, res1);
sub sub(rs, rt, res2);
srl srl(rs, rt, res3);

mux mux(funct, res1, res2, res3, rd);

endmodule
