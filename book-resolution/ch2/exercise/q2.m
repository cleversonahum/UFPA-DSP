% a)
disp("a)\n")
x = [0.5 2.5; 1 2]
A = dctmtx(2)
X = A*x
X_h = [1.25 3.25; 0.25 0.25]
x_h = A'*X_h

% b)
disp("\n\nb)")
% time mean squared-error
MSE_t = mean((x(:)-x_h(:)).^2)
% frequency mean squared-error
MSE_f = mean((X(:)-X_h(:)).^2)
  
% c)
disp("\n\nc)")
% Time SNR
P_x = mean((x(:)).^2)
SNR_x_l = P_x/MSE_t
SNR_x_dB = 10*log10(SNR_x_l)

% Frequency SNR
P_X = mean((X(:)).^2)
SNR_X_l = P_X/MSE_f
SNR_X_dB = 10*log10(SNR_X_l)

disp("\n\nd)")

disp("\n\ne)")
X_h2 = [1.25 3.25; 0 0]
x_h2 = A'*X_h2
% time mean squared-error
MSE_t2 = mean((x(:)-x_h2(:)).^2)
% frequency mean squared-error
MSE_f2 = mean((X(:)-X_h2(:)).^2)

% Time SNR
SNR_x_l2 = P_x/MSE_t2
SNR_x_dB2 = 10*log10(SNR_x_l2)

% Frequency SNR
SNR_X_l2 = P_X/MSE_f2
SNR_X_dB2 = 10*log10(SNR_X_l2)
