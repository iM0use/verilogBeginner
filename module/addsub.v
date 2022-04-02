// 设计一个可做加法和减法的计数器，结果为a+b^sub
// 当sub=1时，a+b^sub=a-b；当sub=0时a+b^sub=a+b
module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] b1;
    assign b1 = b^{32{sub}};
    wire cout;
    add16 d1(a[15:0],b1[15:0],sub,sum[15:0],cout);
    add16 d2(a[31:16],b1[31:16],cout,sum[31:16],);
endmodule
