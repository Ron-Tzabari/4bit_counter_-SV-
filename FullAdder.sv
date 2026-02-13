module Full_Adder(
	input logic in1,
	input logic in2,
	input logic cin,
	output logic sum,
	output logic cout
);

logic cout_internal;
logic sum_internal;

always_comb begin
	sum_internal = in1 ^ in2 ^ cin;
	cout_internal = (in1&in2) | (in1&cin) | (in2&cin);
end

assign sum = sum_internal;
assign cout = cout_internal;

endmodule