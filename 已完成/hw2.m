% for循环
res=0;
for i=0:63
    res=res+2^i;
end
disp(res);
% while循环
res=0;
n=1;
while n<=63
    res=res+2^n;
    n=n+1;
end

% 不使用循环
Martrix=2.^[1:63];
res=sum(Martrix);