%% 大数定律的MATLAB验证——图形可视化
%% 数据初始化
clear all
clf
clc
nmax=10000;  % 设置随机变量数量上限
n=5; % 设置初始样本容量
gap=5; % 设置步长
tot=0;
x=zeros(1,nmax/n);
y=zeros(1,nmax/n);
while n<=nmax
    d=poissrnd(100,1,n); % 设置样本服从参数为100的泊松分布
    E=mean(d);
    tot=tot+1;
    x(tot)=n;
    y(tot)=E;
    n=n+gap;
end

%% 画图表示
xx=0:nmax;
y_mu_line=100*ones(1,length(xx));
y_up_line=100.3*ones(1,length(xx));
y_down_line=99.7*ones(1,length(xx));
hold on;
plot(x,y,'r-','LineWidth',0.5);
plot(xx,y_mu_line,'b-','LineWidth',1);
plot(xx,y_up_line,'b--','LineWidth',1);
plot(xx,y_down_line,'b--','LineWidth',1);
% 调整图像
legend('辛钦大数定律验证图线','标准均值线','上参考线','下参考线');
axis([0,nmax,97,103]);
title('验证辛钦大数定律');
xlabel('随机变量总数'),ylabel('变量均值');
grid on;
box on;
