// You are given a module my_dff with two inputs and one output (that implements a D flip-flop). Instantiate three of them, then chain them together to make a shift register of length 3. The clk port needs to be connected to all instances. 
module top_module ( input clk, input d, output q );
    //input dd;
    //output q1, q2, q3;
    wire p1,p2,p3,p4;
    //assign q = ppp;
    my_dff d1(clk, d, p1);
    //assign dd = q;
    assign p2 = p1;
    my_dff d2(clk, p2, p3);
    assign p4 = p3;
    my_dff d3(clk, p4, q);
    
endmodule

// office ans
/*
module top_module (
	input clk,
	input d,
	output q
);

	wire a, b;	// Create two wires. I called them a and b.

	// Create three instances of my_dff, with three different instance names (d1, d2, and d3).
	// Connect ports by position: ( input clk, input d, output q)
	my_dff d1 ( clk, d, a );
	my_dff d2 ( clk, a, b );
	my_dff d3 ( clk, b, q );

endmodule
*/
