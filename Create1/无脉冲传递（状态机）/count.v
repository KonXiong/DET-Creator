/******************************************************************************************
Author:  熊康
E-mail： 1390000666@qq.com
Device:  DSE-EP2C5
Tool:    Quartus 9.0
Function:计数器（记录1的个数）
Version: 2022-3-10 v1.0
********************************************************************************************/
module count(CP,rst,num);
input CP,rst;
output reg [3:0] num;

always @(posedge CP or posedge rst)
    begin
		if(rst==1)
			num = 4'b0000;
        else
            num = num + 4'b0001;
            
    end

endmodule