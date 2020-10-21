function boolean = sushu(n)
%SUSHU ÅĞ¶ÏnÊÇ·ñÎªËØÊı
boolean=1;
i=2;
while i<=n/2
    if mod(n,i)==0
        boolean=0;
    end
    i=i+1;
end

end

