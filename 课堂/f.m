function [fx] = f(x)
fx=0.5*x.*(x<=2)+(1.5-0.25*x).*(x>2&x<=6)+(0.5).*(x>6);
end

