module counter(
	input logic rst,
	input logic clk,
	output logic [3:0] current_count
);

logic [3:0] const_one = 4'b0001;
logic [3:0] next_count;
logic cin = 1'b0;
logic cout;

four_bit_Adder Adder_Inst(
	.a(const_one),
	.b(current_count),
	.cin(cin),
	.sum(next_count),
	.cout(cout)
);

always_ff @(posedge rst, posedge clk) begin
	if(rst) begin
		current_count <= 4'b0000;
	end
	
	else if(clk) begin
		current_count <= next_count;
	end
end

endmodule