% 周期方波信号频谱分析
function  CTFS_SQ
%  绘制并观察周期方波信号频谱   
%  Nf：傅里叶级数展开的项数
%  an：各次谐波余弦项系数
display('Please input the value of Nf ');
Nf = input('Nf = ');
an = zeros(Nf+1,1);
an(1) = 0;
for i = 1:Nf 
    an(i+1) = 2/(i*pi)*sin(i*pi/2);                     %计算系数an
    cn(i+1) = abs(2/(i*pi)*sin(i*pi/2));                %计算幅度谱
end
t = -5:0.01:5;
x = square(pi*(t+0.5));                                 %用square函数求方波信号
subplot(211);
plot(t,x);                                              %绘制方波信号
axis([-5 5 -1.5 1.5]);
title('周期方波信号','Fontsize',8);
xlabel('t   (单位:s)', 'Fontsize',8);
subplot(212);
k = 0:Nf;
stem(k,cn);
hold on;
plot(k,cn);
title('幅度频谱','Fontsize',8);
xlabel('谐波次数', 'Fontsize',8);
% End