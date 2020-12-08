[b, a] = butter(3, 1/3)
z_values = [0.5+0.5i, 3+2i, 0, -1, 3];

% Letra a)

for z=z_values
  Hz(a,b,z);
end

% Letra b)
[h,w] = freqz(b,a);
[mag_max, arg_mag] = max(h)
freq_max = w(arg_mag)/(2*pi)

% Letra c)
h_n = impz(b,a)
h_n(1:5)

% Letra d)
disp('O sinal é IIR pois possui polos em locais diferentes da origem mesmo que o sistema seja causal')

function H_z = Hz(a,b,z)
  disp(["\nPara z = ", num2str(z), " :\n"])
  z_mtx = [z^0, z^-1, z^-2, z^-3]';
  H_z = (b*z_mtx)/(a*z_mtx)
end

