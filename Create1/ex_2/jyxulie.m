%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  �ܿ�
%E-mail�� 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:������λ��Ծ����
%Version: 2022-3-9 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function jyxulie(n0,nf,ns)
% ��� n0���յ� nf���� ns ����ʼ��Ծ��
k = n0 : ns-1;
kk = ns : nf;
n = length(k);
nn = length(kk);
u =zeros(1,n);
uu = ones(1,nn);
figure('Color','White','Position',[100 100 640 240]);
stem(kk,uu,'filled','LineWidth',2);
hold on
stem(k,u,'filled','LineWidth',2);
hold off
axis([n0 nf 0 1.5])
set(gca, 'FontName','Times New Roman','FontSize',10,'Linewidth',2);
xlabel('Number \it n \rm');
end