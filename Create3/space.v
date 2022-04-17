/******************************************************************************************
Author:  熊康
E-mail： 1390000666@qq.com
Device:  DSE-EP2C5
Tool:    Quartus 9.0
Function:计算占空比
Version: 2022-4-7 v1.0
********************************************************************************************/
module space(clk,NB,NC,duty);
input clk;
input [30:0] NB;
input [30:0] NC;
output reg [6:0] duty;

always @(negedge clk)
    begin
        duty[6:0] <= (NC*100)/NB;
    end

endmodule