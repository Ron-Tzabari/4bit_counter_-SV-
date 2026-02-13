module Counter_tb();

logic rst;
logic clk = 1'b0;
logic [3:0] current_count;
logic [3:0] next_count;
logic [3:0] const_one = 4'b0001;
logic cin = 1'b0;
logic cout;

counter c_inst(
	.rst(rst),
	.clk(clk),
	.current_count(current_count)
);

always #10 clk = ~clk;

initial begin

	//Reseting
	rst = 1'b1;
	@(posedge clk);
	rst = 1'b0;

end

endmodule