%% (1)
A=input('ÇëÊäÈë¾ØÕó:');
notA = not(A);
num=sum(sum(notA));
disp(num);
%% (2)
x=0:0.1:2;
ff=f(x).*f(x+2);
plot(ff,x);