%-Chapter-1-Exercise-1----------------------------------------------------------------------------------------------------------

%-Initialization----------------------------------------------------------------------------------------------------------------
format compact;
clc;
clear;
close all;
%-------------------------------------------------------------------------------------------------------------------------------

%-Repeat-Coin-Toss-[1, 2]-to-confirm-Probability-Definition---------------------------------------------------------------------
P = zeros(10000, 1);
k = 1:10000;
for n = k
    ni = 0;
    rands = unidrnd(2, 1, n);
    for i = 1:n
        if rands(1, i) == 2
            ni = ni+1;
        end
    end
    P(n, 1) = ni/n;
end

%-Plots------------------------------------------------------------------------------------------------------------------------
figure(1);
plot(k, P);
xlabel('n');
ylabel('P(X=2)');
disp('-----------------------------------------------------------------------------------------------------------------------');
disp('We ascertain that as <n> tends to infinity, the Probability of a Coin Toss being <Heads> is close to 0.5.');
disp('-----------------------------------------------------------------------------------------------------------------------');
%-------------------------------------------------------------------------------------------------------------------------------