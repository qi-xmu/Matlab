%% 1
clear;
figure(1);
t = -10:0.01:10;
f = 5*square(pi*t);
plot(t,f);
axis([-5, 5, -6, 6]);
%% 2
clear;
figure(2);
t = -10:0.01:10;
f = square(2*pi*t,60)+1;
plot(t,f);
axis([-5, 5, -1, 3]);
%% 3
clear;
figure(3);
t = -10:0.01:10;
f = 0.5*sawtooth(2*t)+0.5;
plot(t,f);
axis([-3*pi, 3*pi, -0.5, 2]);
%% 4
clear;
figure(4);
t = -10:0.01:10;
f = sawtooth(2*pi*t,0.5)+1;
plot(t,f);
axis([-5, 5, -1, 3]);
%% 5
clear;
figure(5);
t = -10:0.01:10;
f = 2*rectpuls(t,4);
plot(t,f);
axis([-5, 5, -1, 3]);