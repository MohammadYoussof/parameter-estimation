for j = 1:299
    derivative(j) = (data(j + 1, 5) - data(j, 5))* 3;
end
beta_column = (beta(1, 1:300))';
plot(beta_column, derivative')