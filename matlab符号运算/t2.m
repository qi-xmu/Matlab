%% (1)
syms x t;
f=t*sin(x);
diff(f,x)
diff(f,t)
diff(diff(f,x),t)
%% (2)
syms x y z;
f=x^(y^z);
diff(f,x)
diff(f,y)
diff(f,z)