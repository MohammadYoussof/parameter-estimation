Z = data(:, 75);
W = gausswin(600, 15);

for b = 1:300
    idx  = 301 - b;
    prod = Z.*W(idx:idx + 299, 1);
%     figure(b)
%     plot(W(idx:idx + 299, 1))
    FT = abs(fftshift(fft(prod)));
    C(:, b) = 10.*log10(FT);
end

% C = abs(C);
pcolor(C)
