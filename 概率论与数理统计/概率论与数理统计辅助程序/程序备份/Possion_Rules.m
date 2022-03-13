%% 泊松定理MATLAB程序展示——图形可视化
%% 数据准备
clear all
clc
lambda=100; % 泊松分布参数(常数100)
%% 绘制二项分布、泊松分布分布律图(对应不同n值)
%% n=300（较小值）
figure;
n=300;   % 二项分布中的n
p=lambda/n;   % 二项分布中的p
hold on;
x=0:n;
y1=binopdf(x,n,p);
y2=poisspdf(x,lambda);
plot(x,y1,'r.','MarkerSize',12);
plot(x,y2,'b*','MarkerSize',6);
legend('二项分布：\itn=300,\itp\approx0.33','泊松分布：\it\lambda=\itnp=100'); % 显示图例
axis([lambda-40,lambda+40,-0.005,0.05]); % 调整坐标轴
title('泊松定理验证图像');
grid on;
box on;

%% n=1000
figure;
n=1000;   % 二项分布中的n
p=lambda/n;   % 二项分布中的p
hold on;
x=0:n;
y1=binopdf(x,n,p);
y2=poisspdf(x,lambda);
plot(x,y1,'r.','MarkerSize',12);
plot(x,y2,'b*','MarkerSize',6);
legend('二项分布：\itn=1000,\itp=0.1','泊松分布：\it\lambda=\itnp=100');  % 显示图例
axis([lambda-40,lambda+40,-0.005,0.05]);  % 调整坐标轴
title('泊松定理验证图像');
grid on;
box on;

%% n=1500
figure;
n=1500;   % 二项分布中的n
p=lambda/n;   % 二项分布中的p
hold on;
x=0:n;
y1=binopdf(x,n,p);
y2=poisspdf(x,lambda);
plot(x,y1,'r.','MarkerSize',12);
plot(x,y2,'b*','MarkerSize',6);
legend('二项分布：\itn=1500,\itp\approx0.067','泊松分布：\it\lambda=\itnp=100');  % 显示图例
axis([lambda-40,lambda+40,-0.005,0.05]);   % 调整坐标轴
title('泊松定理验证图像');
grid on;
box on;

%% n=10000（较大值）
figure;
n=10000;   % 二项分布中的n
p=lambda/n;   % 二项分布中的p
hold on;
x=0:n;
y1=binopdf(x,n,p);
y2=poisspdf(x,lambda);
plot(x,y1,'r.','MarkerSize',12);
plot(x,y2,'b*','MarkerSize',6);
legend('二项分布：\itn=10000,\itp=0.01','泊松分布：\it\lambda=\itnp=100');  % 显示图例
axis([lambda-40,lambda+40,-0.005,0.05]);   % 调整坐标轴
title('泊松定理验证图像');
grid on;
box on;