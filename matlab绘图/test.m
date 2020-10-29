% 循环
% (1)
n=[100 1000 10000];
SUM=[0 0 0];
for i=1:3
    for j=1:n(1,i)
       SUM(1,i)=SUM(1,i)+1/(j^2);
    end
    disp(SUM(1,i));
end
% (2)
RES=[1 1 1];
for i=1:3
    for j=1:n(1,i)
        RES(1,i)=RES(1,i)*(((2*j)^2)/((2*j-1)*(2*j+1)));
    end
    disp(RES(1,i));
end