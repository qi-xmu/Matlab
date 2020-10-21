% 循环
num=input("请输入20个数：");
%num=[1 2 3 4 5 6 78 8990 00];
MIN=num(1,1); MAX=num(1,1);
for it=num
    if it<MIN
        MIN=it;
    end
    if it>MAX
        MAX=it;
    end
end

% min()和max();
Min=min(num);
Max=max(num);

