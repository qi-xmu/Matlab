% 周期锯齿脉冲信号频谱分析
function  CTFS_JC
% 绘制并观察周期锯齿脉冲信号频谱特性
% 	Nf：谐波的次数
% bn：第1,2,3,...次谐波正弦项系数
display('Please input the value of Nf ');
Nf = input('Nf = ');
bn = zeros(Nf+1,1);
cn = zeros(Nf+1,1);
bn(1) = 0;
for i = 1:Nf
    bn(i+1) = (-1)^(i+1)*1/(i*pi);                          % 计算系数bn
    cn(i+1) = abs(bn(i+1));                                 %计算幅度频谱
end
t = -5:0.01:5;
x = sawtooth(pi*(t+1));                                     %用sawtooth函数构造周期锯齿脉冲信号
subplot(211);
plot(t,x);
axis([-5 5 -1.5 1.5]);
title('周期锯齿脉冲信号','Fontsize',8);
xlabel('t   (单位:s)', 'Fontsize',8);
subplot(212);
k = 0:Nf;
stem(k,cn);
hold on;
plot(k,cn);
title('幅度频谱','Fontsize',8);
xlabel('谐波次数', 'Fontsize',8);
% End
