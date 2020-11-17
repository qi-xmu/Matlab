%% 1
clear;
figure(1);
syms t;
f = 4*sin(2*pi*t-pi/4);
fplot(f);
%% 2
clear;
figure(2);
syms t;
f = (1-exp(-2*t)).*heaviside(t);
fplot(f);
%% 3
figure(3);
clear;
syms t
f = heaviside(t+2)-heaviside(t-2);
fplot(f);
%% 4
clear;
figure(4);
syms t;
f = exp(-2*abs(t));
fplot(f);