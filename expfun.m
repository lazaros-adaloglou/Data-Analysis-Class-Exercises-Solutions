function MMean = expfun(mu, n, M)
samples = exprnd(mu, n, M);
means = mean(samples);
figure();
hist(means);
MMean = mean(means);
end

