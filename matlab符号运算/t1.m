%% (1)
syms a x;
f=(sin(x)-sin(a))/(x-a);
limit(f,x,a)
%% (2)
syms x;
f=((2*x+3)/(2*x+1))^(x+1);
limit(f,x,inf)
%% (3)
syms a x;
f=(sqrt(x)-sqrt(a)+sqrt(x-a))/sqrt(x^2-a^2);
limit(f,x,a,'right')
%% (4)
syms a x;
f=(sqrt(x)-sqrt(a)+sqrt(x-a))/sqrt(x^2-a^2);
limit(f,x,a,'left')
%% (5)
syms a x;
f=tan(2*x)/tan(5*x);
limit(f,x,0)
