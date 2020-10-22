x=-10:0.1:10;
y=-10:0.1:10;
[x,y]=meshgrid(x,y);

z=cos(x).*cos(y).*exp(-sqrt(x.^2+y.^2)/4);
subplot(1, 2, 1);
surf(x,y,z);

z(x<0 & y<0) = NaN;
subplot(1, 2, 2);
mesh(x, y, z);