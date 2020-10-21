% 顺序结构
% (1)
n=input("请输入n的值：");
M=sum(1./((1:n).^2));
SUM=sum(M);
disp(SUM);

% (2)
fenzi=2:2:2*n;
fenmu=1:2:2*n-1;
RES=(fenzi.^2)./(fenmu.*(fenmu+2));
RES=prod(RES);
disp(RES);