%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  �ܿ�
%E-mail�� 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:������λ��������
%Version: 2022-3-9 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mcxulie(n0,nf,ns)
% ��� n0���յ� nf���� ns ����һ��λ���塣
    n = n0 : nf;
    k = length(n);
    f = zeros(1,k);
    f(1,ns-n0+1) = 1;
    figure('Color','White','Position',[100 100 640 240]);
    stem(n,f,'filled','LineWidth',2);
    axis([n0,nf,0,1.5]);
    set(gca, 'FontName','Times New Roman','FontSize',10,'Linewidth',2);
    xlabel('Number \it n \rm');

end