B = [0.1 0 71];
A = [1 11 71];
Fs = 50;
[HzNum, HzDen] = bilinear(B, A, Fs) 

[hs, ws] = freqs(B,A)
subplot(2,1,1)
plot(ws,10*log10(hs))
grid on
xlabel('Frequency (rad/s)')
ylabel('Magnitude')

[hz, wz] = freqz(HzNum, HzDen)
subplot(2,1,2)
plot(wz*50,10*log10(hz))
grid on
xlabel('Frequency (rad/s)')
ylabel('Magnitude')