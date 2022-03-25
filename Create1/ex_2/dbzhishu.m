%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  �ܿ�
%E-mail�� 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:������λָ������
%Version: 2022-3-9 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function dbzhishu(a,n0,nf,ns)
% a:����
% n0�۲���㣬ns֮ǰΪ0��nf�۲��յ�
k = n0 : ns-1;
kk = ns : nf;
n = length(k);
nn = length(kk);
u =zeros(1,n);
uu = ones(1,nn);
for g=1:nn
    uu(1,g)=uu(1,g)*a^(g-ns-1);
end
figure('Color','White','Position',[100 100 640 240]);
stem(kk,uu,'filled','LineWidth',2);
hold on
stem(k,u,'filled','LineWidth',2);
set(gca, 'FontName','Times New Roman','FontSize',10,'Linewidth',2);
xlabel('Number \it n \rm');
ylabel('\itx\rm[\itn\rm]');
hold off                                                                                                                           
end