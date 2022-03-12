%% 中心极限定理的MATLAB验证(n=10,100,1000)——图形可视化
%% 数据准备与初始化
clear all
clf
clc
m=10000;  % 设置总体样本容量
%% 随机变量数目为10
n=10; % 设置随机变量个数
e=4; % 设置指数分布参数
tot=0;
mt=zeros(1,m);
for i=1:m
    d=exprnd(e,1,n); % 设置样本服从参数为e的指数分布
    s=sum(d);
    tt=(s-n*e)/(sqrt(n)*e); % 变量规范化
    tot=tot+1;
    mt(tot)=tt;
end
% 画图表示
hist(mt,20); % 画出频率分布直方图
x1=-4:0.1:4;
y1=normpdf(x1,0,1);
y1=y1*3800;
hold on
plot(x1,y1,'r-','LineWidth',2);
title('中心极限定理验证图(\itn=10)');
legend('随机变量频率直方图','标准正态分布示意曲线');

%% 随机变量数目为100
n=100; % 设置随机变量个数
e=4; % 设置指数分布参数
tot=0;
mt=zeros(1,m);
for i=1:m
    d=exprnd(e,1,n); % 设置样本服从参数为e的指数分布
    s=sum(d);
    tt=(s-n*e)/(sqrt(n)*e); % 变量规范化
    tot=tot+1;
    mt(tot)=tt;
end
% 画图表示
figure;
hist(mt,20); % 画出频率分布直方图
x1=-4:0.1:4;
y1=normpdf(x1,0,1);
y1=y1*3800;
hold on
plot(x1,y1,'r-','LineWidth',2);
title('中心极限定理验证图(\itn=100)');
legend('随机变量频率直方图','标准正态分布示意曲线');

%% 随机变量数目为1000
n=1000; % 设置随机变量个数
e=4; % 设置指数分布参数
tot=0;
mt=zeros(1,m);
for i=1:m
    d=exprnd(e,1,n); % 设置样本服从参数为e的指数分布
    s=sum(d);
    tt=(s-n*e)/(sqrt(n)*e); % 变量规范化
    tot=tot+1;
    mt(tot)=tt;
end
% 画图表示
figure;
hist(mt,20); % 画出频率分布直方图
x1=-4:0.1:4;
y1=normpdf(x1,0,1);
y1=y1*3800;
hold on
plot(x1,y1,'r-','LineWidth',2);
title('中心极限定理验证图(\itn=1000)');
legend('随机变量频率直方图','标准正态分布示意曲线');
