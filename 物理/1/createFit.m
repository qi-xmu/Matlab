function [fitresult, gof] = createFit(Uf, If)
%CREATEFIT(UF,IF)
%  Create a fit.
%
%  Data for '二极管伏安特性曲线' fit:
%      X Input : Uf
%      Y Output: If
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 05-Nov-2020 13:17:42 自动生成


%% Fit: '二极管伏安特性曲线'.
[xData, yData] = prepareCurveData( Uf, If );

% Set up fittype and options.
ft = fittype( 'smoothingspline' );
opts = fitoptions( 'Method', 'SmoothingSpline' );
opts.SmoothingParam = 0.919699389215782;

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', '二极管伏安特性曲线' );
h = plot( fitresult, xData, yData );
legend( h, 'If vs. Uf', '二极管伏安特性曲线', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 'Uf', 'Interpreter', 'none' );
ylabel( 'If', 'Interpreter', 'none' );
grid on


