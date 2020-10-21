a = [-3:0.1:3];
z3=(exp(0.3*a) - exp(-0.3*a)).*sin(a+0.3)/2;
plot(a,z3);
xlabel('a');ylabel('z3');