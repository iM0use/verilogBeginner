// By name

// Connecting signals to a module's ports by name allows wires to remain correctly connected even if the port list changes. This syntax is more verbose, however.

// mod_a instance2 ( .out(wc), .in1(wa), .in2(wb) ); 
module top_module ( input a, input b, output out );
    
    mod_a instance2 ( a, b, out );
	
endmodule

// office sol
/*
module top_module (
	input a,
	input b,
	output out
);

	// Create an instance of "mod_a" named "inst1", and connect ports by name:
	mod_a inst1 ( 
		.in1(a), 	// Port"in1"connects to wire "a"
		.in2(b),	// Port "in2" connects to wire "b"
		.out(out)	// Port "out" connects to wire "out" 
				// (Note: mod_a's port "out" is not related to top_module's wire "out". 
				// It is simply coincidence that they have the same name)
	);

/*
	// Create an instance of "mod_a" named "inst2", and connect ports by position:
	mod_a inst2 ( a, b, out );	// The three wires are connected to ports in1, in2, and out, respectively.
*/
	
endmodule
*/
