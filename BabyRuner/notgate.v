// Create a module that implements a NOT gate. 
module top_module( input in, output out );
	assign out = ~in;
  // or assign out = !in;
  // we can use bitwise-Not(~) and logical-NOT(!) operators, like C.
  // Since we're working with a one-bit, so all can work.
endmodule

