%% 4
clear;
figure(1);
T = 0 : 1/1E3 : 1;  % 1 kHz sample freq for 1 sec
D = 0 : 1/3 : 1;    % 3 Hz repetition freq
Y = pulstran(T,D,'tripuls',0.1,-1); plot(T,Y)