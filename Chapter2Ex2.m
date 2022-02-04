%-Chapter-1-Exercise-2----------------------------------------------------------------------------------------------------------

%-Initialization----------------------------------------------------------------------------------------------------------------
format compact;
clc;
clear;
close all;
%-------------------------------------------------------------------------------------------------------------------------------

%-Calculate-Y-Random-Numbers-from-Exponential-Distribution----------------------------------------------------------------------
lambda = 1;
n = 1000;
X = rand(n, 1);
I = ones(n, 1);
Y = (-1/lambda)*log(I-X);
%-------------------------------------------------------------------------------------------------------------------------------

%-Plots------------------------------------------------------------------------------------------------------------------------
figure(1);
hist(Y);
title('Histogram of Y Random Numbers.');
hold on;
ax = gca;
x = linspace(ax.XLim(1), ax.XLim(2), n);
v = lambda*exp(-lambda*x);
f = max(hist(Y))*v;
plot(x, f, 'r');
%-------------------------------------------------------------------------------------------------------------------------------