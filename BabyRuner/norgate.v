// Create a module that implements a NOR gate. A NOR gate is an OR gate with its output inverted.
module top_module( 
    input a, 
    input b, 
    output out );
    assign out = ~(a | b);
    // Verilog has separate bitwise-OR (|) and logical-OR (||) operators, like C. Since we're working with a one-bit here, it doesn't matter which we choose. 
endmodule
