// In this exercise, you are provided with the same module add16 as the previous exercise, which adds two 16-bit numbers with carry-in and produces a carry-out and 16-bit sum. You must instantiate three of these to build the carry-select adder, using your own 16-bit 2-to-1 multiplexer. 
module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
	wire cout;
    wire [15:0] s0,s1;
    add16 a1(a[15:0],b[15:0],1'd0,sum[15:0],cout);
    add16 a2(a[31:16],b[31:16],1'd1,s0,);
    add16 a3(a[31:16],b[31:16],1'd0,s1,);
    assign sum[31:16] = (cout)?s0:s1;
    
endmodule
