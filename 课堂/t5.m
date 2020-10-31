%% 循环
clear;
RES=[];
N=[100,1000,10000];
for n=N
    res=1;
    for i=1:1:n
        tmp=((2*i)^2)/((2*i-1)*(2*i+1));
        res=res*tmp;
    end
    RES=[RES,res];
end
disp(RES);
%% 向量
clear;
i=1:1:10000;
tmp=((2*i).^2)./((2*i-1).*(2*i+1));
RES=[prod(tmp(1,1:100)),prod(tmp(1,1:1000)),prod(tmp(1,1:10000))];
disp(RES);