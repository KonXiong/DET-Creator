/******************************************************************************************
Author:  熊康
E-mail： 1390000666@qq.com
Device:  DSE-EP2C5
Tool:    Quartus 9.0
Function:计数器
Version: 2022-4-7 v1.0
********************************************************************************************/
module cal(clk,NA,NB,fre);
input clk;
input [30:0] NA;
input [30:0] NB;
output reg [19:0] fre;

always @(negedge clk)
    begin
		/*if(NA<100) begin
			fre <= (NA-1)*1000000/NB;
		end 
		else if(NA<10000) begin
			fre <= (NA-1)*10000/NB;
		end
		else if(NA<1000000) begin
			fre <= (NA-1)*100/NB;
		end else
			fre <= (NA-1)/NB;
		*/
		//fre[19:0] <= (NA-1)*11000000/NB;
		fre[19:0] <= NA*10000000/NB;
	end

endmodule
