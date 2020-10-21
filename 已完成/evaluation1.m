score=input("请输入分数：");
switch floor(score/10)
    case {9,10}
        disp("A");
    case 8
        disp("B");
    case 7
        disp("C");
    case 6
        disp("D");
    case {0,1,2,3,4,5}
        disp("E");
    otherwise
        disp("ERROE");
end