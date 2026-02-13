module Adder_tb();

logic [3:0] A;
logic [3:0] B;
logic [3:0] sum;
logic cout;
logic cin = 1'b0;
logic [4:0] result;

four_bit_Adder test(
	.a(A),
	.b(B),
	.cin(cin),
	.sum(sum),
	.cout(cout)
);

initial begin

	A = 4'b0011;
	B = 4'b1100;
	
	#20
	
	A = 4'b1110;
	B = 4'b1101;
	
	#20
	
	A = 4'b1000;
	B = 4'b0101;

end

endmodule