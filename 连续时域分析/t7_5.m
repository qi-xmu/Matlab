%% 1
clear;
t = -10:0.1:10;
f = 2+exp(i*pi/4*t)+exp(i*pi/2*t);
figure(1)
subplot(2,2,1),plot(t,real(f)),title('实部');
subplot(2,2,3),plot(t,imag(f)),title('虚部'); 
subplot(2,2,2),plot(t,abs(f)),title('模');
subplot(2,2,4),plot(t,angle(f)),title('相角');
%% 2
clear;
t = -10:0.1:10;
f = exp(-(2+i*2)*t);
figure(2);
subplot(2,2,1),plot(t,real(f)),title('实部');
subplot(2,2,3),plot(t,imag(f)),title('虚部'); 
subplot(2,2,2),plot(t,abs(f)),title('模');
subplot(2,2,4),plot(t,angle(f)),title('相角');