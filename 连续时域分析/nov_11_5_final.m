
t = -10:0.001:10;
f = 5*square(2*pi*t/2);
subplot(3, 2, 1);
plot(t, f)
axis([-5, 5, -6, 6]);

f = 2*square(2*pi*t, 60);
f(f<0) = 0;
subplot(3, 2, 2);
plot(t, f)
axis([-3, 3, -1, 3]);

f = pi * sawtooth(2*pi*t);
subplot(3, 2, 3);
plot(t, f)
axis([-3, 3, -6, 6]);

f = pi*sawtooth(2*pi*t, 0.5);
subplot(3, 2, 4);
plot(t, f)
axis([-5, 5, -6, 6]);

f = 2*rectpuls(t/4);
subplot(3, 2, 5);
plot(t, f)
axis([-3, 3, -1, 3]);