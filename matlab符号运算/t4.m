%% 
syms x y z;
a=16;
b=12;
c=18;
eq1=x*(x+y+z)==a;
eq2=y*(x+y+z)==b;
eq3=z*(x+y+z)==c;
[x,y,z]=solve(eq1,eq2,eq3)