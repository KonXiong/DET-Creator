/******************************************************************************************
Author:  熊康
E-mail： 1390000666@qq.com
Device:  DSE-EP2C5
Tool:    Quartus 9.0
Function:输出（选择）
Version: 2022-4-7 v1.0
********************************************************************************************/
module print(clk,fre,duty,choice,out1,out2,out3,out4,out5,out6);
input clk,choice;
input [19:0] fre;
input [6:0] duty;
output reg [3:0] out1,out2,out3,out4,out5,out6;

always @(posedge clk)
	begin
        if(choice)  begin
            out6 = fre/1000000;
            out5 = fre/100000 % 10;
            out4 = fre/10000 % 10;
            out3 = fre/1000 % 10;
            out2 = fre/100 % 10;
            out1 = fre/10 % 10; 
        end
        else begin
			out6 = 0;
            out5 = 0;
            out4 = 0;
            out3 = duty/100 % 10;
            out2 = duty/10 % 10;
            out1 = duty % 10;
        end
	end

endmodule