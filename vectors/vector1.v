// Build a combinational circuit that splits an input half-word (16 bits, [15:0] ) into lower [7:0] and upper [15:8] bytes. 
`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
// 隐式网络转换，可能会导致bug，因此使用`default_nettype none去禁用它。
module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
    assign out_hi[7:0] = in[15:8];
    assign out_lo[7:0] = in[7:0];
    // a good solution
    // assign {out_hi, out_lo} = in; 
endmodule

// office sol
/*
module top_module (
	input [15:0] in,
	output [7:0] out_hi,
	output [7:0] out_lo
);
	
	assign out_hi = in[15:8];
	assign out_lo = in[7:0];
	
	// Concatenation operator also works: assign {out_hi, out_lo} = in;
	
endmodule
*/
