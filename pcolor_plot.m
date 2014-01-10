Z = data';
W = hamming(10000);

for b = 1:300
    prod = Z(1:10000,b).*W;
    FT = abs(fftshift(fft(prod)));
    C(:, b) = 10.*log10(FT);
end

figure(1)
pcolor(C)
shading flat
colorbar
