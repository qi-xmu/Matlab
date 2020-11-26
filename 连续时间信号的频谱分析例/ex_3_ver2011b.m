%ex_3��Ƶ��
clear all;syms t x n t0;
T=5;tao=0.5;Nf=60;Nn=6;
x=heaviside(t+t0)-heaviside(t-t0)
x=subs(x,t0,tao)
A0=int(x,t,-tao,T-tao)/T
As=int(x*2*cos(2*pi*n*t/T)/T,t,-tao,T-tao)
Bs=int(x*2*sin(2*pi*n*t/T)/T,t,-tao,T-tao)
Fn=(As-j*Bs)/2
A(1)=double(vpa(A0,Nn));
for k=1:Nf
     A(k+1)=double(vpa(subs(As,n,k),Nn));
     B(k+1)=double(vpa(subs(Bs,n,k),Nn));
end
t1=-2.5:0.003:2.5;
y=subs(x,t,t1);
subplot(3,1,1),plot(t1,y),title('��������'),axis([-2.5,2.5,-0.1,1.1])
%������
Fs(1)=A(1);
Fs(2:Nf+1)=abs(A(2:Nf+1)-j.*B(2:Nf+1));
Ns=0:Nf;
subplot(3,1,2),stem(Ns,Fs),title('����ʱ�亯���ĵ�����')
%˫����
N=Nf*2*pi/T;
K=-N:2*pi/T:N;
Fs(2:Nf+1)=abs(A(2:Nf+1)-j.*B(2:Nf+1))/2;
Fd=[fliplr(Fs),Fs(2:Nf+1)];
subplot(3,1,3),stem(K,Fd),title('����ʱ�亯����˫����')
