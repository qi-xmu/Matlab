% 1
t=0:0.1:10;
ft1=(2-exp(-t)).*heaviside(t);
% subplot(1,2,1);
plot(t,ft1);
hold on;
% 2
ft2=exp(-t).*cos(10*pi*t).*(heaviside(t-1)-heaviside(t-2));
% subplot(1,2,2);
plot(t,ft2);
