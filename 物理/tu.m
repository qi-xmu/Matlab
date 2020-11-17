Iz = [0 0.3 0.5 1 2 5 8 11 15];
Uz = [0 0.2266 0.2807 0.3757 0.5079 0.7998 1.0371 1.2564 1.5280];

If = [0 4.11 4.5 4.83 5.53 6.35 7.23 8.14 9.12 10.08];
If = -If;
%If = If .* 10^(-3);
Uf = [0 1 2 3 5 7 9 11 13 15];
Uf= -Uf;


Pz = polyfit(Uz,Iz,5)
Pf = polyfit(Uf,If,3);

xf =-15:1:0;
yf = polyval(Pf, xf);

xz = 0:0.1:1.5;
yz = polyval(Pz, xz);

plot(xz,yz,xf,yf);
grid on;