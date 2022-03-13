%% ���ɶ���MATLABչʾ����ͼ�ο��ӻ�
%% ����׼��
clear all
clf
clc
% ����׼��
lambda=100; % ���ɷֲ�����(����100)
% ���ƶ���ֲ������ɷֲ��ֲ���ͼ
hold on;
x=0:200;
y1=poisspdf(x,lambda);
plot(x,y1,'b*','MarkerSize',4);
% n=500
n=500;   % ����ֲ��е�n
p=lambda/n;   % ����ֲ��е�p
y2=binopdf(x,n,p);
plot(x,y2,'r.','MarkerSize',6);
% n=1000
n=1000;   % ����ֲ��е�n
p=lambda/n;   % ����ֲ��е�p
y2=binopdf(x,n,p);
plot(x,y2,'r.','MarkerSize',6);
% n=1500
n=1500;   % ����ֲ��е�n
p=lambda/n;   % ����ֲ��е�p
y2=binopdf(x,n,p);
plot(x,y2,'r.','MarkerSize',6);
% n=10000
n=10000;   % ����ֲ��е�n
p=lambda/n;   % ����ֲ��е�p
y2=binopdf(x,n,p);
plot(x,y2,'r.','MarkerSize',6);
% legend('���ɷֲ���\it\lambda=\itnp=100','����ֲ���\itn=1000,\itp=0.1');
axis([60,140,-0.005,0.05]);
grid on;
box on;
%plot(x,y1,'r-','LineWidth',2);
%plot(x,y2,'b-.','LineWidth',2);