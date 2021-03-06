/******************************************************************************************
Author:  熊康
E-mail:  1390000666@qq.com
Device:  DSE-EP2C5
Tool:    Quartus 9.0
Function:控制器（记录1的个数）
Version: 2022-3-10 v1.0
********************************************************************************************/
module control(Start,num,Done,rst,state,CP);
input Start;
input [3:0] num;
input CP;
output reg Done,rst=0;
parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10;
output reg [1:0] state=S0;

always @(posedge CP or negedge Start) begin
    if(!Start) begin
        state = S0;
        rst=1;
    end
    else begin
        case(state)
        S0: begin
            Done = 0;
            state = S1;
            rst=0;
        end
        endcase

        case(state)
        S1: begin
            if(num==4'b1111) state = S2;
        end
        endcase
        
        case(state)
        S2: begin
            Done = 1;
            state = S0;
            rst = 1;
        end
        endcase
    end
end
endmodule