/******************************************************************************************
Author:  熊康
E-mail： 1390000666@qq.com
Device:  DSE-EP2C5
Tool:    Quartus 9.0
Function:计数器(用于记录M大小)
Version: 2022-3-17 v1.0
********************************************************************************************/
module count(clk,rst,num);
input clk,rst;
output reg [3:0] num;

always @(posedge clk or negedge rst) begin
    if(!rst)
        num <= 4'b0000;
    else
        num <= num + 4'b0001;
end

endmodule