%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  �ܿ�
%E-mail�� 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:������λ��Ծ�źŲ���ͼ
%Version: 2022-3-9 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;clc;
t=-4:0.05:4;
x=exp(t).*(heaviside(6-3*t)-heaviside(-6-3*t));    %heaviside��λ��Ծ����
figure('Color','White','Position',[100 100 640 240]);
plot(t,x,'LineWidth',2);
xlabel('Time');ylabel('x');

