/******************************************************************************************
Author:  熊康
E-mail:  1390000666@qq.com
Device:  DSE-EP2C5
Tool:    Quartus 9.0
Function:控制器（记录1的个数）
Version: 2022-2-24 v1.0
********************************************************************************************/
module control(Start,X,CP,con,Done,CP1,CP2,R);
input Start,X;
input CP;
input con;
output reg Done=0;
output reg CP1,CP2,R;

always @(*)
begin
	CP1=CP;
	if(X==1 && con==0) CP2 = CP;
	if(!con) begin
		R=Start;
		Done<=0;
	end
	else begin
		Done=1;
		R=0;
	end

end

endmodule