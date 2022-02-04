function MMean = poissonfun(lambda, M, n)
samples = poissrnd(lambda, M, n);
means = mean(samples);
figure();
hist(means);
MMean = mean(means);
end

