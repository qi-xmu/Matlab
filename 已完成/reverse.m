num=input("请输入三位数字：");
% num=123;
num1=rem(num,10);
num2=(rem(num,100)-num1)/10;
num3=fix(num/100);
res=num1*100+num2*10+num3;
disp(res);