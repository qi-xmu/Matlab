% 周期三角脉冲信号频谱分析
function  CTFS_SJ
%  绘制周期三角脉冲信号频谱
% 	Nf：谐波的次数
%  an：第1,2,3,...次谐波余弦项系数
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
x = (sawtooth(pi*(t+1),0.5)+1)/2;                        %构造三角脉冲信号
subplot(211);
plot(t,x);
axis([-5 5 -1.5 1.5]);
title('周期三角脉冲信号','Fontsize',8);
xlabel('t   (单位:s)', 'Fontsize',8);
subplot(212);
k = 0:Nf;
stem(k,cn);
hold on;
plot(k,cn);
title('幅度频谱','Fontsize',8);
xlabel('谐波次数', 'Fontsize',8);
% End
