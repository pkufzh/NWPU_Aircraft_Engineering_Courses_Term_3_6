%% 泊松定理MATLAB展示——图形可视化
%% 数据准备
clear all
clf
clc
% 数据准备
lambda=100; % 泊松分布参数(常数100)
% 绘制二项分布、泊松分布分布律图
hold on;
x=0:200;
y1=poisspdf(x,lambda);
plot(x,y1,'b*','MarkerSize',4);
% n=500
n=500;   % 二项分布中的n
p=lambda/n;   % 二项分布中的p
y2=binopdf(x,n,p);
plot(x,y2,'r.','MarkerSize',6);
% n=1000
n=1000;   % 二项分布中的n
p=lambda/n;   % 二项分布中的p
y2=binopdf(x,n,p);
plot(x,y2,'r.','MarkerSize',6);
% n=1500
n=1500;   % 二项分布中的n
p=lambda/n;   % 二项分布中的p
y2=binopdf(x,n,p);
plot(x,y2,'r.','MarkerSize',6);
% n=10000
n=10000;   % 二项分布中的n
p=lambda/n;   % 二项分布中的p
y2=binopdf(x,n,p);
plot(x,y2,'r.','MarkerSize',6);
% legend('泊松分布：\it\lambda=\itnp=100','二项分布：\itn=1000,\itp=0.1');
axis([60,140,-0.005,0.05]);
grid on;
box on;
%plot(x,y1,'r-','LineWidth',2);
%plot(x,y2,'b-.','LineWidth',2);