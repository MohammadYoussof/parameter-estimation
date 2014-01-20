i = 1;
beta = linspace(1, 10, 300);
data = zeros(300, 10000);

for i = 1:300
    [X, Y, Z] = lorenz(28, 10, beta(1, i));
    X = X';
    [rows, columns] = size(X);
    data(i, 1:columns) = X(1, :);
end;

% j = 1;
% for i = 1:22689
%     small = min(abs(data(:, i)));
%     if small == 0;
%         small2(j, 1) = i;
%         j = j+1;
%     end
% end

% min(small2)
