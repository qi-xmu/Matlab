% ��9_1
% �۲����ڷ����źŵķֽ���ϳ�
% m������Ҷ����չ��������
clc;clear all;close all;

disp('Please input the value of m (����Ҷ����չ��������)'); % ���������ʾ��ʾ��Ϣ
m = input('m = ');                                             % �������븵��Ҷ����չ��������
t = -2*pi:0.01:2*pi;                                            % ʱ���ε�ʱ�䷶Χ-2��~2�У��������0.01
n = round(length(t)/4);                                        % �������ڷ����źŵ����ڣ�����1/2���ڵ����ݵ���
f = [ones(n,1);-1*ones(n,1);ones(n,1);-1*ones(n+1,1)];         %�������ڷ����ź�
y = zeros(m+1,max(size(t)));
y(m+1,:) = f'; 
figure(1);
plot(t/pi,y(m+1,:));                                           %���Ʒ����ź�
grid;                                                          %��ͼ���м���դ��
axis([-2 2 -1.5 1.5]);                                         %ָ��ͼ����ʾ�ĺ����귶Χ�������귶Χ
title('���ڷ���');                                             %����ʾ��ͼ�μ��ϱ���
xlabel('��λpi','Fontsize', 8);                                %��ʾ�����굥λ
x = zeros(size(t));
kk = '1';
for k=1:2:2*m-1                                                %ѭ����ʾг������ͼ��
    pause;
    x = x+sin(k*t)/k;
    y((k+1)/2,:) = 4/pi*x;                                     %�������г�����Ӻ�
    plot(t/pi,y(m+1,:));
    hold on;
    plot(t/pi,y((k+1)/2,:));                                   %����г�������ź�
    hold off;
    grid;
    axis([-2 2 -1.5 1.5]);
    title(strcat('��',kk,'��г������'));
    xlabel('��λpi','Fontsize', 8);
    kk = strcat(kk,'��',num2str(k+2));
end
pause;
plot(t/pi,y(1:m+1,:));
grid;
axis([-2 2 -1.5 1.5]);
title('����г�����Ӳ���');
xlabel('��λpi','Fontsize', 8);
% End
