% �������������ź�Ƶ�׷���
function  CTFS_SJ
%  �����������������ź�Ƶ��
% 	Nf��г���Ĵ���
%  an����1,2,3,...��г��������ϵ��
display('Please input the value of Nf ');
Nf = input('Nf = ');
an = zeros(Nf+1,1);
cn = zeros(Nf+1,1);
an(1) = 1/2;
cn(1) = an(1);
for i = 1:Nf
    an(i+1) = 4*sin(i*pi/2)*sin(i*pi/2)/(i*i*pi*pi);
    cn(i+1) = abs(an(i+1));
end
t = -5:0.01:5;
x = (sawtooth(pi*(t+1),0.5)+1)/2;                        %�������������ź�
subplot(211);
plot(t,x);
axis([-5 5 -1.5 1.5]);
title('�������������ź�','Fontsize',8);
xlabel('t   (��λ:s)', 'Fontsize',8);
subplot(212);
k = 0:Nf;
stem(k,cn);
hold on;
plot(k,cn);
title('����Ƶ��','Fontsize',8);
xlabel('г������', 'Fontsize',8);
% End
