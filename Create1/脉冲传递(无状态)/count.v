/******************************************************************************************
Author:  熊康
E-mail： 1390000666@qq.com
Device:  DSE-EP2C5
Tool:    Quartus 9.0
Function:计数器（记录1的个数）
Version: 2022-2-24 v1.0
********************************************************************************************/
module count(clk,rst,cnt);
input clk;
input rst;
output reg [3:0] cnt;

always @(posedge clk or negedge rst)
	begin
		if(!rst)
			cnt<=0;
		else begin
			cnt <= cnt + 4'b0001;
		end
	end


endmodule
