function [b,y] = by(m,n)
%BY շת�����
%   ������С�����������Լ��
M=m;N=n;
while n~=0
    t=mod(m,n);
    m=n;
    n=t;
end
y=m;
b=M*N/y;
end

