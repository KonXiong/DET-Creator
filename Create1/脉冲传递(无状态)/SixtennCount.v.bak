/******************************************************************************************
Author:  熊康
E-mail： 1390000666@qq.com
Device:  DSE-EP2C5
Tool:    Quartus 9.0
Function:计数器至16（记录1的个数）
Version: 2022-2-24 v1.0
********************************************************************************************/
module SixteenCount(clk,rst,con);
input clk;
input rst;
reg [3:0] cnt;
output reg con=0;


always @(posedge clk or negedge rst)
	begin
		if(!rst) begin
			cnt<=0;
			con=0;
		end
		else begin
			if (cnt == 4'b1111) con<=1;
			cnt <= cnt + 4'b0001;
		end
	end


endmodule
