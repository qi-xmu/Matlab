
function fexp(d,w,t1,t2,a)
%n1:绘制波形的起始时间
%n2:绘制波形的终止时间
%w:虚指数信号角频率
%a: 虚指数信号的幅度
t=t1:0.01:t2;
X=a*exp((d+i*w)*t);
Xr=real(X);%取实部
Xi=imag(X);%取虚部
Xa=abs(X);%取模
Xn=angle(X);%取幅角
subplot(2,2,1),plot(t,Xr),axis([t1,t2,-(max(Xa)+0.5),max(Xa)+0.5]),
title('实部');
subplot(2,2,3),plot(t,Xi),axis([t1,t2,-(max(Xa)+0.5),max(Xa)+0.5]),
title('虚部');
subplot(2,2,2), plot(t,Xa),axis([t1,t2,0,max(Xa)+1]),title('模');
subplot(2,2,4),plot(t,Xn),axis([t1,t2,-(max(Xn)+1),max(Xn)+1]),title('相角');
