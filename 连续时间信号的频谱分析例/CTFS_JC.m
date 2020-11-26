% ���ھ�������ź�Ƶ�׷���
function  CTFS_JC
% ���Ʋ��۲����ھ�������ź�Ƶ������
% 	Nf��г���Ĵ���
% bn����1,2,3,...��г��������ϵ��
display('Please input the value of Nf ');
Nf = input('Nf = ');
bn = zeros(Nf+1,1);
cn = zeros(Nf+1,1);
bn(1) = 0;
for i = 1:Nf
    bn(i+1) = (-1)^(i+1)*1/(i*pi);                          % ����ϵ��bn
    cn(i+1) = abs(bn(i+1));                                 %�������Ƶ��
end
t = -5:0.01:5;
x = sawtooth(pi*(t+1));                                     %��sawtooth�����������ھ�������ź�
subplot(211);
plot(t,x);
axis([-5 5 -1.5 1.5]);
title('���ھ�������ź�','Fontsize',8);
xlabel('t   (��λ:s)', 'Fontsize',8);
subplot(212);
k = 0:Nf;
stem(k,cn);
hold on;
plot(k,cn);
title('����Ƶ��','Fontsize',8);
xlabel('г������', 'Fontsize',8);
% End
