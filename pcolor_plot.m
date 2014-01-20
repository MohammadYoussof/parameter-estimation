Z = data';
W = hamming(10000);

Fs = 100/10000;

for b = 1:300
    prod = Z(1:10000,b).*W;
    FT = abs(fftshift(fft(prod)));
    C(:, b) = 10.*log10(FT);
end

x = linspace(1, 10, 300);
y = Fs/2*linspace(-0.5,0.5,10000)
figure(1)
pcolor(x, y, C)
shading flat
colorbar

xlabel('Beta Value')
ylabel('FFT of X Vector')
title('Pcolor plot of the FFT of the X Vector Over Values of Beta')

%print -painters -dpdf -r300 test.png