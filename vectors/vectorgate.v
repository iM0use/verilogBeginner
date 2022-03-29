// Build a circuit that has two 3-bit inputs that computes the bitwise-OR of the two vectors, the logical-OR of the two vectors, and the inverse (NOT) of both vectors. Place the inverse of b in the upper half of out_not (i.e., bits [5:3]), and the inverse of a in the lower half. 
module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
    assign out_or_bitwise[0] = b[0] | a[0];
    assign out_or_bitwise[1] = b[1] | a[1];
    assign out_or_bitwise[2] = b[2] | a[2];
    assign out_not[5] = ~b[2];
    assign out_not[4] = ~b[1];
    assign out_not[3] = ~b[0];
    assign out_not[2] = ~a[2];
    assign out_not[1] = ~a[1];
    assign out_not[0] = ~a[0];
    // in verilog we can use vec1 | vec2 convey the bitwise-or.
    // this shows we can operator two number bitwise in C.
    assign out_or_logical = a[0]|a[1]|a[2]|b[0]|b[1]|b[2];
    // there we should know logical-or can return one bit. so use `a || b` easier.
endmodule

// office sol
/*

	input [2:0] a, 
	input [2:0] b, 
	output [2:0] out_or_bitwise,
	output out_or_logical,
	output [5:0] out_not
);
	
	assign out_or_bitwise = a | b;
	assign out_or_logical = a || b;

	assign out_not[2:0] = ~a;	// Part-select on left side is o.
	assign out_not[5:3] = ~b;	//Assigning to [5:3] does not conflict with [2:0]
	
endmodule
*/
