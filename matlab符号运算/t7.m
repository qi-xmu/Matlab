%% 数值方法
% (1)
t=0:0.1:10;
f1=3-exp(t);
plot(t,f1);
% (2)
f2=3*exp(-2*t)+5*exp(-t);
plot(t,f2);
% (3)
f3=exp(-t).*sin(2*pi*t);
plot(t,f3);
% (4)
a=2;
f4=sin(a*t)./(a*t);
plot(t,f4);
%% 符号方法
clear
% (1)
t=sym('t');
f1=str2sym('3-exp(t)');
fplot(f1);
% (2)
f2=str2sym('3*exp(-2*t)+5*exp(-t)');
fplot(f2)
% (3)
f3=str2sym('exp(-t)*sin(2*pi*t)');
fplot(f3);
% (4)
f4=str2sym('sin(2*t)/(2*t)');
fplot(f4);




