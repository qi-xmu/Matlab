x=-10:0.1:10;
y=-10:0.1:10;
[x,y]=meshgrid(x,y);

z=cos(x).*cos(y).*exp(-sqrt(x.^2+y.^2)/4);
surf(x,y,z);