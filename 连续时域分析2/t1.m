%% 1
clear;
a = [1 4 2];
b = [1 0 3];
t=0:0.01:10;
f = exp(-t).*heaviside(t); 
rc=[2,1];
sys=tf(b,a);
[A,B,C,D]=tf2ss(b,a);
subplot(3,1,1),initial(A,B,C,D,rc,t); %零输入响应
subplot(3,1,2),lsim(b,a,f,t);         %零状态响应
subplot(3,1,3),lsim(A,B,C,D,f,t,rc);  %全响应,只能用状态系数来表示系统
%% 2
clear;
a = [1 5 6];
b = [0 0 6];
t=0:0.01:10;
f = 10*cos(2*t).*heaviside(t); 
rc=[-1,2];
sys=tf(b,a);
[A,B,C,D]=tf2ss(b,a);
subplot(3,1,1),initial(A,B,C,D,rc,t); %零输入响应
subplot(3,1,2),lsim(b,a,f,t);         %零状态响应
subplot(3,1,3),lsim(A,B,C,D,f,t,rc);