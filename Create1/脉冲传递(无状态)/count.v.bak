module count(clk,rst,cnt);
input clk;
input rst;
output reg [3:0] cnt;

always @(posedge clk or negedge rst)
	begin
		if(!rst)
			cnt<=0;
		else begin
			cnt <= cnt + 4'b0001;
		end
	end


endmodule
