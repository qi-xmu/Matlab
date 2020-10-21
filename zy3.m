t=0:0.1:10;
for r=2:4
    x=r*cos(t)+3*t;
    y=r*sin(t)+3;
    plot(y,x);
    hold on;
end