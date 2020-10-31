%% (3)
flag=1;
passwd=input("输入密码：");
while(flag)
    if(passwd==20181108)
        disp("输入正确");
        flag=not(flag);
    else
        disp("重新输入");
        passwd=input("");
    end
end