/******************************************************************************************
Author:  熊康
E-mail： 1390000666@qq.com
Device:  DSE-EP2C5
Tool:    Quartus 9.0
Function:相位寄存器
Version: 2022-3-17 v1.0
********************************************************************************************/
module phase(clk,rst,M,fre);
input clk,rst;  
input [19:0] M; //M：频率控制字
output reg [7:0] fre;  //输出的相位
reg [19:0] N;  //相位寄存

always @(posedge clk or negedge rst) begin
    if(!rst)
        N <= 0;
    else begin
        N <= N + M;
        fre[7:0] <= N[19:12];
    end

end
    
endmodule