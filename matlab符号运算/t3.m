%% (1)
syms r O o; % O代指θ o指小写θ
I=r^2*(1+cos(O))*sin(o);
int(int(int(I,0,2*a*sin(O)),0,pi/4),0,2*pi)
%% (2)
syms x;
I=1/(1+x^2);
int(I,-inf,inf)