
function fexp(d,w,t1,t2,a)
%n1:���Ʋ��ε���ʼʱ��
%n2:���Ʋ��ε���ֹʱ��
%w:��ָ���źŽ�Ƶ��
%a: ��ָ���źŵķ���
t=t1:0.01:t2;
X=a*exp((d+i*w)*t);
Xr=real(X);%ȡʵ��
Xi=imag(X);%ȡ�鲿
Xa=abs(X);%ȡģ
Xn=angle(X);%ȡ����
subplot(2,2,1),plot(t,Xr),axis([t1,t2,-(max(Xa)+0.5),max(Xa)+0.5]),
title('ʵ��');
subplot(2,2,3),plot(t,Xi),axis([t1,t2,-(max(Xa)+0.5),max(Xa)+0.5]),
title('�鲿');
subplot(2,2,2), plot(t,Xa),axis([t1,t2,0,max(Xa)+1]),title('ģ');
subplot(2,2,4),plot(t,Xn),axis([t1,t2,-(max(Xn)+1),max(Xn)+1]),title('���');
