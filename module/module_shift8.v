// create a 4-to-1 multiplexer (not provided) 
module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] q1,q2,q3;
    my_dff8 d1(clk,d,q1);
    my_dff8 d2(clk,q1,q2);
    my_dff8 d3(clk,q2,q3);
    always @(*) begin
        case(sel)
            2'o0: q = d;
            2'o1: q = q1;
            2'o2: q = q2;
            2'o3: q = q3;
        endcase
    end
endmodule

// office sol
/*
module top_module (
	input clk,
	input [7:0] d,
	input [1:0] sel,
	output reg [7:0] q
);

	wire [7:0] o1, o2, o3;		// output of each my_dff8
	
	// Instantiate three my_dff8s
	my_dff8 d1 ( clk, d, o1 );
	my_dff8 d2 ( clk, o1, o2 );
	my_dff8 d3 ( clk, o2, o3 );

	// This is one way to make a 4-to-1 multiplexer
	always @(*)		// Combinational always block
		case(sel)
			2'h0: q = d;
			2'h1: q = o1;
			2'h2: q = o2;
			2'h3: q = o3;
		endcase

endmodule
*/
