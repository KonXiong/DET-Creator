module SixteenCount(clk,rst,con);
input clk;
input rst;
reg [3:0] cnt;
output reg con=0;


always @(posedge clk or negedge rst)
	begin
		if(!rst)
			cnt<=0;
		else begin
			if (cnt > 4'b1111) con<=1;
			cnt <= cnt + 4'b0001;
		end
	end


endmodule
