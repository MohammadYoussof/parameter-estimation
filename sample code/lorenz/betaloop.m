i = 1
beta = linspace(1, 100, 300);
data = ones(300, 10000);

for i = 1:300
    [X Y Z] = lorenz(28, 10, beta(i));
    X = X';
    [r, c] = size(X)
    data(i, 1:c) = X(1, :);
    i = i + 1
    
end;
