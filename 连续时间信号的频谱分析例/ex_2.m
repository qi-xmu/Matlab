% 例9_1
% 观察周期方波信号的分解与合成
% m：傅里叶级数展开的项数
clc;clear all;close all;

disp('Please input the value of m (傅里叶级数展开的项数)'); % 在命令窗口显示提示信息
m = input('m = ');                                             % 键盘输入傅里叶级数展开的项数
t = -2*pi:0.01:2*pi;                                            % 时域波形的时间范围-2π~2π，采样间隔0.01
n = round(length(t)/4);                                        % 根据周期方波信号的周期，计算1/2周期的数据点数
f = [ones(n,1);-1*ones(n,1);ones(n,1);-1*ones(n+1,1)];         %构造周期方波信号
y = zeros(m+1,max(size(t)));
y(m+1,:) = f'; 
figure(1);
plot(t/pi,y(m+1,:));                                           %绘制方波信号
grid;                                                          %在图形中加入栅格
axis([-2 2 -1.5 1.5]);                                         %指定图形显示的横坐标范围和纵坐标范围
title('周期方波');                                             %给显示的图形加上标题
xlabel('单位pi','Fontsize', 8);                                %显示横坐标单位
x = zeros(size(t));
kk = '1';
for k=1:2:2*m-1                                                %循环显示谐波叠加图形
    pause;
    x = x+sin(k*t)/k;
    y((k+1)/2,:) = 4/pi*x;                                     %计算各次谐波叠加和
    plot(t/pi,y(m+1,:));
    hold on;
    plot(t/pi,y((k+1)/2,:));                                   %绘制谐波叠加信号
    hold off;
    grid;
    axis([-2 2 -1.5 1.5]);
    title(strcat('第',kk,'次谐波叠加'));
    xlabel('单位pi','Fontsize', 8);
    kk = strcat(kk,'、',num2str(k+2));
end
pause;
plot(t/pi,y(1:m+1,:));
grid;
axis([-2 2 -1.5 1.5]);
title('各次谐波叠加波形');
xlabel('单位pi','Fontsize', 8);
% End
