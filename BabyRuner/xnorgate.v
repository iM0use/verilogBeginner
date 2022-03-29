// Create a module that implements an XNOR gate.
module top_module( 
    input a, 
    input b, 
    output out );
    assign out = (a&b)|(~a&~b);
    // or assign out = ~(a^b);
    // The bitwise-XOR operator is ^. There is no logical-XOR operator. 
endmodule
