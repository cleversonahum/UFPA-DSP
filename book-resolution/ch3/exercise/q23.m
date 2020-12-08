[B, A] = butter(3,1,'s')
[Bnew, Anew] = lp2lp(B,A,1200*pi)
s_values = [0, 1i, 1200*pi*i, 2000*i]; 

% Letra a)
disp("\nH(s):\n")
for s=s_values
  Hs(A,B,s,0);
end
disp("\nG(s):\n")
for s=s_values
  Hs(Anew,Bnew,s,0);
end

disp("\nGanho em dB:\n")
for s=s_values
  Hs(A,B,s,1);
end
disp("\nG(s):\n")
for s=s_values
  Hs(Anew,Bnew,s,1);
end

function H_s = Hs(a,b,s,dB)
  disp(["\nPara s = ", num2str(s), " :\n"])
  s_mtx = [s^3, s^2, s^1, s^0]';
  if(dB==1)
      H_s = 10*log10(abs(sum((b*s_mtx))/sum((a*s_mtx))))
  else
      H_s = abs(sum((b*s_mtx))/sum((a*s_mtx)))
  end
end