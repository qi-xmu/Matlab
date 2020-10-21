

% 循环
for a=-3.0:0.1:3.0
    y=(exp(0.3*a)-exp(-0.3*a))/2*sin(a+3)+log((0.3+a)/2);
    disp(y);
end