function res = Arcsin(x)
%ÇóarcsinxµÄÖµ
res=0;
last=10;
n=0;
while last>=0.002
    last = (factorial(2*n)*x^(2*n+1))/(2^(2*n)*factorial(n)^2*(2*n+1))
    res=res+last;
    n=n+1;
end

