%-Chapter-1-Exercise-2----------------------------------------------------------------------------------------------------------

%-Initialization----------------------------------------------------------------------------------------------------------------
format compact;
clc;
clear;
close all;
%-------------------------------------------------------------------------------------------------------------------------------

%-Calculate-Y-Random-Numbers-from-Exponential-Distribution----------------------------------------------------------------------
n = 1000;
X = rand(n, 1);
I = ones(n, 1);
Y = -1/1*log(I-X);
%-------------------------------------------------------------------------------------------------------------------------------

%-Plots------------------------------------------------------------------------------------------------------------------------
figure(1);
subplot(2, 1, 1);
hist(Y);
title('Histogram of Y Random Numbers.');
F = exp(-X);
subplot(2, 1, 2);
plot(1:n, F);
xlabel('n');
ylabel('f_X(x)');
%-------------------------------------------------------------------------------------------------------------------------------