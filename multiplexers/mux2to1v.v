// Create a 100-bit wide, 2-to-1 multiplexer. When sel=0, choose a. When sel=1, choose b. 
module top_module( 
    input [99:0] a, b,
    input sel,
    output [99:0] out );
	assign out = sel?b:a;
endmodule

// office sol
/*
module top_module (
	input [99:0] a,
	input [99:0] b,
	input sel,
	output [99:0] out
);

	assign out = sel ? b : a;
	
	// The following doesn't work. Why?
	// assign out = (sel & b) | (~sel & a);
	
endmodule
*/
