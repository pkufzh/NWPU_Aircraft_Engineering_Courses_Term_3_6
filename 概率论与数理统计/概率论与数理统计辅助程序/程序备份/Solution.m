%% ³ÌÐòµ÷ÊÔ
clear all
clf
clc
tt=365;
d=poissrnd(70,1,tt);
cnt=0;
n=20;
for i=1:(tt-n+1)
    tot=0;
    cnt=cnt+1;
    for j=i:(i+n-1)
        tot=tot+d(j);
        s(cnt)=tot/n;
    end
end
E=mean(s)
D=var(s)
mu=[40,50,60,70,80];
sigma=[2,5,3,8,1];
x=[20:0.5:120]';
y=[];
for i=1:length(mu)
    y=[y,normpdf(x,mu(i),sigma(i))];
end
plot(x,y);



    
    
    
    
 