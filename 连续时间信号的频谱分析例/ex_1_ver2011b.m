%ex_1
%求系数
clear all; syms t x n t0;
T=10;    % 信号周期
tao_2=0.5; %
Nf=7; % 分解的最高级数
Nn=6; % 有效位数
x=heaviside(t+t0)-heaviside(t-t0); % 注意：Ver 2011b
x=subs(x,t0,tao_2)  
A0=int(x,t,-tao_2,T-tao_2)/T % a0
As=int(x*2*cos(2*pi*n*t/T)/T,t,-tao_2,T-tao_2) % an
Bs=int(x*2*sin(2*pi*n*t/T)/T,t,-tao_2,T-tao_2) % bn
Fn=(As-j*Bs)/2 % fn
A(1)=double(vpa(A0,Nn)); % 直流分量
for k=1:Nf
     A(k+1)=double(vpa(subs(As,n,k),Nn));
     B(k+1)=double(vpa(subs(Bs,n,k),Nn));
end
A
B
%求各次谐波：：开始采用数值处理方法
t1=-T/2:0.01:T/2;
f1=A(1)+A(2).*cos(2*pi*1*t1/T)+B(2)*sin(2*pi*1*t1/T); ;      % 基波
f2=A(3).*cos(2*pi*2*t1/T)+B(3)*sin(2*pi*2*t1/T); ;                 % 2次谐波
f3=A(4).*cos(2*pi*3*t1/T)+B(4).*sin(2*pi*3*t1/T);                 % 3次谐波
f4=A(5).*cos(2*pi*4*t1/T)+B(5).*sin(2*pi*4*t1/T); ;               % 4次谐波
f5=A(6).*cos(2*pi*5*t1/T)+B(6).*sin(2*pi*5*t1/T);                % 5次谐波
f6=A(7).*cos(2*pi*6*t1/T)+B(7).*sin(2*pi*6*t1/T);               % 6次谐波  
f7=f1+f2;                      % 基波+2次谐波
f8=f7+f3;                     % 基波+2次谐波+3次谐波
f9=f8+f4+f6;                 % 基波+2次谐波+3次谐波+4次谐波+6次谐波 
%画出谐波图形
y=subs(x,t,t1);         %调用连续时间函数-周期矩形脉冲
subplot(2,2,1),plot(t1,f1),hold on;plot(t1,y,'r:');title('周期矩形波的形成—基波'),axis([-2.5,2.5,-0.5,1.1])
subplot(2,2,2),plot(t1,f7),hold on;plot(t1,y,'r:');title('周期矩形波的形成—基波+2次谐波'),axis([-2.5,2.5,-0.5,1.1])
subplot(2,2,3),plot(t1,f8),hold on;plot(t1,y,'r:');title('基波+2次谐波+3次谐波'),axis([-2.5,2.5,-0.5,1.1])
subplot(2,2,4),plot(t1,f9),hold on;plot(t1,y,'r:');title('基波+2次谐波+3次谐波+4次谐波+6次谐波'),axis([-2.5,2.5,-0.5,1.1])
%求频谱---------------这边给出双边谱的正轴部分，仅供参考
Fn=(As-j*Bs)/2
Nf=60;
A(1)=double(vpa(A0,Nn));
for k=1:Nf
     A(k+1)=double(vpa(subs(As,n,k),Nn));
     B(k+1)=double(vpa(subs(Bs,n,k),Nn));
end
Fn1(1) = A(1);
Fn1(2:Nf+1)=(A(2:Nf+1)-j*B(2:Nf+1))/2;
absFn1 = abs(Fn1);
angleFn1 = angle(Fn1);
figure;
subplot(211);stem([0:Nf],absFn1,'r.');title('双边幅度谱的正半轴，注意与p200图比较幅度值')
subplot(212);stem([0:Nf],angleFn1,'r.');title('双边相位谱的正半轴')

