# vector

- vector定义一个对相关信号进行分组的vector。`wire [7:0] w`定义8条wire，是可以存储不同信息的8条wire。
- 跟C的区别，C`int my_vector[100]`verilog`wire [99:0] my_vector`。即其vector的dimensions定义在变量名之前，容量定义也略有差别。
- 两个vector容量相同可直接赋值，**注意**：假定Verilog的vector为`wire [2:0] my_vector`则给其他变量赋值从2到0，双闭区间。

