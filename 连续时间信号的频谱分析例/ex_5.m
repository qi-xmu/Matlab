%ex_4
clear all;
R=0.01;t=-2:R:2;
f=Heaviside(t+1)-Heaviside(t-1);
W1=2*pi*5;
N=1000;k=-N:N;W=k*W1/N;

F=f*exp(-j*t'*W)*R;
F_r=real(F);
figure(1)
subplot(2,1,1);plot(t,f);
xlabel('t');ylabel('f(t)');title('f(t)=u(t+1)-u(t-1)');
subplot(2,1,2);plot(W,F_r);
xlabel('w');ylabel('F(w)');title('f(t)�ĸ��ϱ任F(w)');
F_A=abs(F);%��Ƶ����
F_P=angle(F);%��Ƶ����
figure(2)
subplot(2,1,1),plot(W,F_A),xlabel('w');ylabel('abs(F(w))');title('f(t)��Ƶ����)');
subplot(2,1,2),plot(W,F_P),xlabel('w');ylabel('angle(F(w))');title('f(t)��Ƶ����)');


