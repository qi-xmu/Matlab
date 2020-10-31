%% (6)
syms x y;
f=x*y*log(x+y);
diff(f,x)
diff(f,y)
diff(diff(f,x),y)