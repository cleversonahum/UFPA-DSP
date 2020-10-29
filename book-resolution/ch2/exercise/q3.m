C = [120 140 139; 124 220 120; 114 130 122]

disp('DCT')
A = dctmtx(3)
T = A*C'
C_dct = A*T'

clear A, T
disp('DFT')
A = dftmtx(3)
T = A*C'
C_dft = A*T'