% ���ڷ����ź�Ƶ�׷���
function  CTFS_SQ
%  ���Ʋ��۲����ڷ����ź�Ƶ��   
%  Nf������Ҷ����չ��������
%  an������г��������ϵ��
display('Please input the value of Nf ');
Nf = input('Nf = ');
an = zeros(Nf+1,1);
an(1) = 0;
for i = 1:Nf 
    an(i+1) = 2/(i*pi)*sin(i*pi/2);                     %����ϵ��an
    cn(i+1) = abs(2/(i*pi)*sin(i*pi/2));                %���������
end
t = -5:0.01:5;
x = square(pi*(t+0.5));                                 %��square�����󷽲��ź�
subplot(211);
plot(t,x);                                              %���Ʒ����ź�
axis([-5 5 -1.5 1.5]);
title('���ڷ����ź�','Fontsize',8);
xlabel('t   (��λ:s)', 'Fontsize',8);
subplot(212);
k = 0:Nf;
stem(k,cn);
hold on;
plot(k,cn);
title('����Ƶ��','Fontsize',8);
xlabel('г������', 'Fontsize',8);
% End