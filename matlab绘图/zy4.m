x=0:0.1:10;

y1=1-(sin(x).^2);
% subplot(1,2,1);
plot(x,y1,'bo');
hold on;

y2=2.*x-1;
% subplot(1,2,2);
plot(x,y2,'g-.');

title('y1和y2');
xlabel("x轴");
ylabel("y轴");
text(5,8,'x=5');
grid on;
legend('1-sin(x)^2','2x+1')
