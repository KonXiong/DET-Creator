%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  �ܿ�
%E-mail�� 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:������ָ�����е�ʵ�����鲿
%Version: 2022-3-9 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function sfxulie(sigma,omega,n0,nf)
% sigma��e��ָ��ʵ��
% omega: e��ָ���鲿
% �۲��n0��nf
n = n0 : nf;
r = exp(sigma.* n).* cos(omega.* n);
x = exp(sigma.* n).* sin(omega.* n);
figure('Color','White','Position',[100 100 640 240]);
plot(n,r,'b',n,x,'r','LineWidth',2);
set(gca, 'FontName','Times New Roman','FontSize',10,'Linewidth',2);
xlabel('Number \itn\rm');
legend('Real part \itr\rm(\itt\rm)','Image part \itx\rm(\itt\rm)');

