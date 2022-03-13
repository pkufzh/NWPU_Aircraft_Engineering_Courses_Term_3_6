%% ���ɶ���MATLAB����չʾ����ͼ�ο��ӻ�
%% ����׼��
clear all
clc
lambda=100; % ���ɷֲ�����(����100)
%% ���ƶ���ֲ������ɷֲ��ֲ���ͼ(��Ӧ��ͬnֵ)
%% n=300����Сֵ��
figure;
n=300;   % ����ֲ��е�n
p=lambda/n;   % ����ֲ��е�p
hold on;
x=0:n;
y1=binopdf(x,n,p);
y2=poisspdf(x,lambda);
plot(x,y1,'r.','MarkerSize',12);
plot(x,y2,'b*','MarkerSize',6);
legend('����ֲ���\itn=300,\itp\approx0.33','���ɷֲ���\it\lambda=\itnp=100'); % ��ʾͼ��
axis([lambda-40,lambda+40,-0.005,0.05]); % ����������
title('���ɶ�����֤ͼ��');
grid on;
box on;

%% n=1000
figure;
n=1000;   % ����ֲ��е�n
p=lambda/n;   % ����ֲ��е�p
hold on;
x=0:n;
y1=binopdf(x,n,p);
y2=poisspdf(x,lambda);
plot(x,y1,'r.','MarkerSize',12);
plot(x,y2,'b*','MarkerSize',6);
legend('����ֲ���\itn=1000,\itp=0.1','���ɷֲ���\it\lambda=\itnp=100');  % ��ʾͼ��
axis([lambda-40,lambda+40,-0.005,0.05]);  % ����������
title('���ɶ�����֤ͼ��');
grid on;
box on;

%% n=1500
figure;
n=1500;   % ����ֲ��е�n
p=lambda/n;   % ����ֲ��е�p
hold on;
x=0:n;
y1=binopdf(x,n,p);
y2=poisspdf(x,lambda);
plot(x,y1,'r.','MarkerSize',12);
plot(x,y2,'b*','MarkerSize',6);
legend('����ֲ���\itn=1500,\itp\approx0.067','���ɷֲ���\it\lambda=\itnp=100');  % ��ʾͼ��
axis([lambda-40,lambda+40,-0.005,0.05]);   % ����������
title('���ɶ�����֤ͼ��');
grid on;
box on;

%% n=10000���ϴ�ֵ��
figure;
n=10000;   % ����ֲ��е�n
p=lambda/n;   % ����ֲ��е�p
hold on;
x=0:n;
y1=binopdf(x,n,p);
y2=poisspdf(x,lambda);
plot(x,y1,'r.','MarkerSize',12);
plot(x,y2,'b*','MarkerSize',6);
legend('����ֲ���\itn=10000,\itp=0.01','���ɷֲ���\it\lambda=\itnp=100');  % ��ʾͼ��
axis([lambda-40,lambda+40,-0.005,0.05]);   % ����������
title('���ɶ�����֤ͼ��');
grid on;
box on;