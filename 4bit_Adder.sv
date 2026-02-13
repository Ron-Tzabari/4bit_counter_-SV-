module four_bit_Adder(
	input [3:0] a,
	input [3:0] b,
	input cin,
	output cout,
	output [3:0] sum
);

logic [4:0] result;
logic [2:0] carrys;
assign cin = 1'b0;

Full_Adder inst0(
	.in1(a[0]),
	.in2(b[0]),
	.cin(cin),
	.sum(sum[0]),
	.cout(carrys[0])
);

genvar i;
generate
	for(i = 1; i < 3; i++) begin: FA_Chain
		Full_Adder inst(
			.in1(a[i]),
			.in2(b[i]),
			.cin(carrys[i - 1]),
			.sum(sum[i]),
			.cout(carrys[i])
		);
	end
endgenerate

Full_Adder inst3(
	.in1(a[3]),
	.in2(b[3]),
	.cin(carrys[2]),
	.sum(sum[3]),
	.cout(cout)
);

assign result = {cout, sum};

endmodule
	