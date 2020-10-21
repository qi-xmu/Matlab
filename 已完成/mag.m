function boolean = mag( N )
%MAG ÅÐ¶ÏÊÇ·ñÎªÄ§·½Õó
boolean=1;
n=size(N,1);
SUM=sum(N(1,:));
for i=[2:n]
    row=sum(N(i,:));
    col=sum(N(:,i));
    if row~=SUM&&col~=SUM
        boolean=0;
        break;
    end
end
a=0;b=0;
for i=[1:n]
    a=a+N(i,i);
    b=b+N(n+1-i,i);
end
if a~=SUM&&b~=SUM
    boolean=0;
end
end

