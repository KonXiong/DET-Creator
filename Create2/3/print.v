/******************************************************************************************
Author:  熊康
E-mail： 1390000666@qq.com
Device:  DSE-EP2C5
Tool:    Quartus 9.0
Function:输出控制器(用于控制输出频率控制字和输出频率)
Version: 2022-3-24 v1.0
********************************************************************************************/
module print(clk,M,fren,control,out);
input [19:0] M;
input [19:0] fren;
input clk,control;
output reg [19:0] out;

always @(posedge clk) begin
    if(control==1)
        out[19:0] <= M[19:0];
    else
        out[19:0] <= fren[19:0];
end

endmodule
