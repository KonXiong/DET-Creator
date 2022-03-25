/******************************************************************************************
Author:  熊康
E-mail： 1390000666@qq.com
Device:  DSE-EP2C5
Tool:    Quartus 9.0
Function:计数器（记录1的个数）
Version: 2022-3-3 v1.0
********************************************************************************************/
module count(CP,clk,num,rst);
input clk,rst,CP;
output reg [3:0] num;

always @(negedge clk)
	begin
	if(!rst)
		begin
		if(CP==1) num=num+4'b0001;
		end
	else
		num=4'b0000;
	end

endmodule