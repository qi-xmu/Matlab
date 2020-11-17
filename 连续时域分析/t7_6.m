%% 7.6
clear;
syms t;
f = sinc(t)*pi;
%% 原图
figure(1);
fplot(f);
%% 变换
figure(2);
y0=subs(f,t,t-1);
subplot(2,2,1),fplot(y0),title('f(t-1)')
y1=subs(f,t,2*t);
subplot(2,2,2),fplot(y1),title('f(2t)')
y2=-subs(f,t,t/4);
subplot(2,2,3),fplot(y2),title('-f(t/4)')
y3=subs(f,t,1-t/2);
subplot(2,2,4),fplot(y3),title('f(1-t/2)')