/******************************************************************************************
Author:  熊康
E-mail： 1390000666@qq.com
Device:  DSE-EP2C5
Tool:    Quartus 9.0
Function:计数器(用于记录M大小)
Version: 2022-3-17 v1.0
********************************************************************************************/
module count(clk,rst,num,car,fren);
input clk,rst,car;
output reg [19:0] num;
output reg [19:0] fren;

always @(posedge clk or negedge rst) begin
	//用于控制频率控制字
    if(!rst) 
        num <= 0;
    else 
		if(!car)
			num <= num + 1; //M+1
		else 
			num <= {num[18:0],1'b0}; //M*2
end

always @(negedge clk or negedge rst) begin
	if(!rst)
		fren <= 0;
	else
		//计算输出频率
		fren[19:0] <= (num * (10000000 >> 18) >>2);
end

endmodule