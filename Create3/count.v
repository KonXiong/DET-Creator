/******************************************************************************************
Author:  熊康
E-mail： 1390000666@qq.com
Device:  DSE-EP2C5
Tool:    Quartus 9.0
Function:计数器
Version: 2022-4-7 v1.0
********************************************************************************************/
module count(clk,num,rst);
input clk,rst;
output reg [30:0] num;

always @(posedge clk or negedge rst)
	begin
	if(!rst) 
		num=0;
	else
		num=num+1;
	end

endmodule