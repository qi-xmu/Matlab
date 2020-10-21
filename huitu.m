x=0:2*pi/100:2*pi;
y=cos(x).*(0.5+(sin(x)*3)./(1+x.^2));
plot(x,y);
