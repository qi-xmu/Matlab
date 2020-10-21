function [b,y] = by(m,n)
%BY 辗转相除法
%   返回最小公倍数和最大公约数
M=m;N=n;
while n~=0
    t=mod(m,n);
    m=n;
    n=t;
end
y=m;
b=M*N/y;
end

