function [fitresult1, fitresult2, gof1, gof2] = createFit(f, I1, I2)
%CREATEFIT(F,I1)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : f
%      Y Output: I1
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 28-Oct-2020 10:03:47 自动生成


%% Fit: 'untitled fit 1'.
[xData1, yData1] = prepareCurveData( f, I1 );
[xData2, yData2] = prepareCurveData( f, I2 );

% Set up fittype and options.
ft = fittype( '0.9/sqrt(r^2+(x*L-1/(x*C))^2)', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.0838213779969326 0.748151592823709 0.654079098476782];

% Fit model to data.
[fitresult1, gof1] = fit( xData1, yData1, ft, opts );
[fitresult2, gof2] = fit( xData2, yData2, ft, opts );

% Plot fit with data.
figure( 'Name', '谐振曲线' );
plot( fitresult1,'r', xData1, yData1,'ko' );
hold on;
plot( fitresult2,'b', xData2, yData2,'ksquare');
legend('R=100Ω测试点','R=100Ω拟合曲线','R=216Ω测试点', 'R=216Ω拟合曲线');

% Label axes
xtickformat('%.1f')
xlabel('f(kHz)');
ylabel('I(mA)');
grid on


