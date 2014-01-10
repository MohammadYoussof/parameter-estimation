for NR = 1:300
    for NS = 1:50
        x = data(NR, (NS*100):(NS*100 + 99));
         mu = mean(x, 2);
         kurtosis = (x - mu).^4;
        fourth(NR, NS) = mean(kurtosis);
    end
    expectation(NR) = mean(fourth(NR,:));
end

for row = 2:300
    derivative(row) = ((expectation(row)-expectation(row-1))/(beta(row)-beta(row-1)));
end

%dbderivative = 20*log(derivative)
plot(beta, dbderivative)
xlabel('Value of Beta')
ylabel('Sensitivity of Moment (in dB)')
title('Sensitivity of Sixth Central Moment to Beta')

print(gcf, '-dpdf', '-r600', 'figure1.pdf')