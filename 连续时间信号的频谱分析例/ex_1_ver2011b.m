%ex_1
%��ϵ��
clear all; syms t x n t0;
T=10;    % �ź�����
tao_2=0.5; %
Nf=7; % �ֽ����߼���
Nn=6; % ��Чλ��
x=heaviside(t+t0)-heaviside(t-t0); % ע�⣺Ver 2011b
x=subs(x,t0,tao_2)  
A0=int(x,t,-tao_2,T-tao_2)/T % a0
As=int(x*2*cos(2*pi*n*t/T)/T,t,-tao_2,T-tao_2) % an
Bs=int(x*2*sin(2*pi*n*t/T)/T,t,-tao_2,T-tao_2) % bn
Fn=(As-j*Bs)/2 % fn
A(1)=double(vpa(A0,Nn)); % ֱ������
for k=1:Nf
     A(k+1)=double(vpa(subs(As,n,k),Nn));
     B(k+1)=double(vpa(subs(Bs,n,k),Nn));
end
A
B
%�����г��������ʼ������ֵ������
t1=-T/2:0.01:T/2;
f1=A(1)+A(2).*cos(2*pi*1*t1/T)+B(2)*sin(2*pi*1*t1/T); ;      % ����
f2=A(3).*cos(2*pi*2*t1/T)+B(3)*sin(2*pi*2*t1/T); ;                 % 2��г��
f3=A(4).*cos(2*pi*3*t1/T)+B(4).*sin(2*pi*3*t1/T);                 % 3��г��
f4=A(5).*cos(2*pi*4*t1/T)+B(5).*sin(2*pi*4*t1/T); ;               % 4��г��
f5=A(6).*cos(2*pi*5*t1/T)+B(6).*sin(2*pi*5*t1/T);                % 5��г��
f6=A(7).*cos(2*pi*6*t1/T)+B(7).*sin(2*pi*6*t1/T);               % 6��г��  
f7=f1+f2;                      % ����+2��г��
f8=f7+f3;                     % ����+2��г��+3��г��
f9=f8+f4+f6;                 % ����+2��г��+3��г��+4��г��+6��г�� 
%����г��ͼ��
y=subs(x,t,t1);         %��������ʱ�亯��-���ھ�������
subplot(2,2,1),plot(t1,f1),hold on;plot(t1,y,'r:');title('���ھ��β����γɡ�����'),axis([-2.5,2.5,-0.5,1.1])
subplot(2,2,2),plot(t1,f7),hold on;plot(t1,y,'r:');title('���ھ��β����γɡ�����+2��г��'),axis([-2.5,2.5,-0.5,1.1])
subplot(2,2,3),plot(t1,f8),hold on;plot(t1,y,'r:');title('����+2��г��+3��г��'),axis([-2.5,2.5,-0.5,1.1])
subplot(2,2,4),plot(t1,f9),hold on;plot(t1,y,'r:');title('����+2��г��+3��г��+4��г��+6��г��'),axis([-2.5,2.5,-0.5,1.1])
%��Ƶ��---------------��߸���˫���׵����Ჿ�֣������ο�
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
subplot(211);stem([0:Nf],absFn1,'r.');title('˫�߷����׵������ᣬע����p200ͼ�ȽϷ���ֵ')
subplot(212);stem([0:Nf],angleFn1,'r.');title('˫����λ�׵�������')

