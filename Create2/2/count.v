/******************************************************************************************
Author:  熊康
E-mail： 1390000666@qq.com
Device:  DSE-EP2C5
Tool:    Quartus 9.0
Function:计数器(用于记录M大小)
Version: 2022-3-17 v1.0
********************************************************************************************/
module count(clk,rst,num,car,fren,light0,light1,light2,light3,light4,light5,test);
input clk,rst,car;
output reg [19:0] num;
reg [19:0] temp;
output reg [3:0] fren;
output reg light0,light1,light2,light3,light4,light5;
output reg [19:0] test;

always @(posedge clk or negedge rst) begin
	//用于控制频率控制字
    if(!rst)
        num <= 0;
    else begin
		if(!car)
			num <= num + 1; //M+1
		else
			num <= {num[18:0],1'b0}; //M*2
	end
	
	
end

always @(posedge clk) begin
	//计算输出频率
	temp <= ((num * 10000000) >> 20);
	if((temp>>16) > 0) begin
		fren[3:0] = temp[19:16];
		light4 = 1;
		light0 = 0;
		light1 = 0;
		light2 = 0;
		light3 = 0;
		light5 = 0;
	end
	else if((temp>>12) > 0) begin
		fren[3:0] = temp[15:12];
		light3 = 1;
		light0 = 0;
		light1 = 0;
		light2 = 0;
		light4 = 0;
		light5 = 0;
	end
	else if((temp>>8) > 0) begin
		fren[3:0] = temp[11:8];
		light2 = 1;
		light0 = 0;
		light1 = 0;
		light3 = 0;
		light4 = 0;
		light5 = 0;
	end
	else if((temp>>4) > 0) begin
		fren[3:0] = temp[7:4];
		light1 = 1;
		light0 = 0;
		light2 = 0;
		light3 = 0;
		light4 = 0;
		light5 = 0;
	end
	else begin
		fren[3:0] = temp[3:0];
		light0 = 1;
		light1 = 0;
		light2 = 0;
		light3 = 0;
		light4 = 0;
		light5 = 0;
	end
	test[19:0] <= temp[19:0];
end

endmodule