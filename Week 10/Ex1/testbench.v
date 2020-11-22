
module testbench;
// input and output test signals
reg a;
reg b;
reg sel ;
wire y_comb ;
wire y_sel ;
wire y_if ;
wire y_case ;
// creating the instance of the module we want to test

b1_mux_2_1_case b1_mux_2_1_case (a, b, sel , y_case ) ;

initial
begin
a = 1'b0;
b = 1'b1;
#5; // pause (5 units of delay )
sel = 1'b0; // sel change to 0; a -> y
#10; // pause (10 units of delay )
sel = 1'b1; // sel change to 1; b -> y
#10;
b = 1'b0; // b change ; y changes too . sel == 1’b1
#5;
b = 1'b1;
#5;
end
// print signal values on every change
initial
$monitor ("a=%b b =%b sel =%b y _ comb =%b y _ sel =%b y _ if =%b y _
case =%b " ,
a, b, sel , y_comb , y_sel , y_if , y_case );
initial
$dumpvars; // dump all variables
endmodule