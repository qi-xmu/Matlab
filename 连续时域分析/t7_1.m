%% 1
clear;
figure(1);
t = 0:0.01:2*pi;
f = 4*sin(2*pi*t-pi/4); 
plot(t,f);
%% 2
clear;
figure(2);
t = -10:0.1:10;
f = (1-exp(-2*t)).*heaviside(t);
plot(t,f);
%% 3
clear;
figure(3);
t = -10:0.01:10;
f = heaviside(t+2)-heaviside(t-2);
plot(t,f);
%% 4
clear;
figure(4);
t = -10:0.1:10;
f=exp(-2*abs(t));
plot(t,f);