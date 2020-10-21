scale=[2:999];
res=[];
for i=scale
    a=mod(i,10);
    b=(mod(i,100)-a)/10;
    c=floor(i/100);
    if sushu(i)&&(mod(a+b+c,2)==1)
        res=[res,i];
    end
end
disp(res);