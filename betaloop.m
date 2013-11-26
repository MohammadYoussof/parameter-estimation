i = 1;
beta = linspace(1, 100, 300);
data = zeros(300, 10000);

for i = 1:300
    [X Y Z] = lorenz(28, 10, beta(i));
    X = X';
    [rows, columns] = size(X);
    data(i, 1:columns) = X(1, :);
end;
