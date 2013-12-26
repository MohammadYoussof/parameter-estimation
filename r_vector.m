R = sqrt(X.^2 + Y.^2 + Z.^2);
R_length = size(R);
t = 1:R_length;

plot (t,R')

%--------------------------------

for i = 1:300
    data(i, 1:columns) = X(1, :);
end;

j = 1;
for i = 1:22689
    small = min(abs(data(:, i)));
    if small == 0;
        small2(j, 1) = i;
        j = j+1;
    end
end

min(small2)