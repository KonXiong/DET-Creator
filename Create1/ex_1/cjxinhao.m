%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  �ܿ�
%E-mail�� 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:���ڲ�����λ�弤�ź�
%Version: 2022-3-9 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function f=cjxinhao(delta,t,t1)
% f:�����Ĳ�������
% delta:�弤�źſ��
% t:���۲�ʱ�䡯����
% t1:�弤�źſ�ʼʱ��
    k=length(t);
    f=zeros(1,k);
    for g=1:k
        if(t(g)>=t1-delta/2 && t(g)<=t1+delta/2) f(g)=1/delta;
    end
end