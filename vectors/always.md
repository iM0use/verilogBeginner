# 一些循环控制语句

## always

```verilog
// reverse in result at out
wire [7:0] in;
wire [7:0] out;
always @(*) begin
  for (int i=0; i<8; i++) // int is a SystemVerilog type. Use integer for pure Verilog.
    out[i] = in[9-i-1];
end
```

## generate

```verilog
wire [7:0] in;
wire [7:0] out;
generate
  genvar i;
  for (i=0; i<8; i++) begin: my_block_name
    assign out[i] = in[8-i-1];
  end
endgenerate
```

## 参考

https://hdlbits.01xz.net/wiki/Vectorr
