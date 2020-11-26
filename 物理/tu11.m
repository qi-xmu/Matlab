%%
UH=[0 4.9 9.8 14.8 19.6 24.6 29.5 34.5 39.3];
KH=20;
Is=0:1:8;

B=UH./(KH.*Is);
figure(1);
fit=polyfit(Is,UH,1)

UHfit=polyval(fit,Is);
plot(Is,UHfit,Is,UH,"r.");
xlabel("Is/mA");
ylabel("UH/mV");
legend('y=4.9200x-0.0133',"测试点");
title("UH-Is特性曲线");