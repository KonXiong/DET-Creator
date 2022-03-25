module control(Start,X,CP,con,Done,CP1,CP2,R);
input Start,X;
input CP;
input con;
output reg Done=0;
output reg CP1,CP2,R;

always @(*)
begin
	CP1=CP;
	//if(CP==0) CP2=0;
	//if(X==1 && con==0) CP2=1;
	if(X==1 && con==0) CP2 = CP;
	R=Start;
	if(con==1) 
	begin
		Done=1;
		R=0;
	end
end

endmodule