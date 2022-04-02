// You are given a module add16 that performs a 16-bit addition. 
module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cin,cout;
    add16 ad2(a[15:0],b[15:0],cin,sum[15:0],cout);
    wire jk;
    assign jk = cout;
    wire jj;
    add16 ad1(a[31:16],b[31:16],jk,sum[31:16],jj);
    
    //wire ck = cout
    //assign sum[0] = sum[0] + cout;
    
endmodule
