% Letra a)
b = [100];
a = [1 10*sqrt(2) 100];
sys = tf(b,a);
damp(sys)
freqs(b,a,0:0.01:20)
