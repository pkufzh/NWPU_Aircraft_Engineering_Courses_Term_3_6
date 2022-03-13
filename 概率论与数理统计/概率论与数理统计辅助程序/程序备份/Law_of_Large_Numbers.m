%% �������ɵ�MATLAB��֤����ͼ�ο��ӻ�
%% ���ݳ�ʼ��
clear all
clf
clc
nmax=10000;  % �������������������
n=5; % ���ó�ʼ��������
gap=5; % ���ò���
tot=0;
x=zeros(1,nmax/n);
y=zeros(1,nmax/n);
while n<=nmax
    d=poissrnd(100,1,n); % �����������Ӳ���Ϊ100�Ĳ��ɷֲ�
    E=mean(d);
    tot=tot+1;
    x(tot)=n;
    y(tot)=E;
    n=n+gap;
end

%% ��ͼ��ʾ
xx=0:nmax;
y_mu_line=100*ones(1,length(xx));
y_up_line=100.3*ones(1,length(xx));
y_down_line=99.7*ones(1,length(xx));
hold on;
plot(x,y,'r-','LineWidth',0.5);
plot(xx,y_mu_line,'b-','LineWidth',1);
plot(xx,y_up_line,'b--','LineWidth',1);
plot(xx,y_down_line,'b--','LineWidth',1);
% ����ͼ��
legend('���մ���������֤ͼ��','��׼��ֵ��','�ϲο���','�²ο���');
axis([0,nmax,97,103]);
title('��֤���մ�������');
xlabel('�����������'),ylabel('������ֵ');
grid on;
box on;
