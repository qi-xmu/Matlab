clear all
figure(1);
fexp(0,pi/4,0,15,2);%���Ϻ���P131


t=0:0.01:3;
a=-1;b=10;
z=exp((a+i*b)*t);

figure(2)
subplot(2,2,1),plot(t,real(z)),title('ʵ��')
subplot(2,2,3),plot(t,imag(z)),title('�鲿') 
subplot(2,2,2),plot(t,abs(z)),title('ģ')
subplot(2,2,4),plot(t,angle(z)),title('���')