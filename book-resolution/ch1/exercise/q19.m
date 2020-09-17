% a)
x = [0.02 0 8.7 -2.5]
b = 8
     
% Assuming signed representation (because only 7 bits are used for number
% representation
q43 = fi(x, 1, b, 3); %Q4.3
q34 = fi(x, 1, b, 4); %Q3.4
q07 = fi(x, 1, b, 7); %Q0.7

disp('Binary representation:')
fprintf('Q4.3 = %s\nQ43.4 = %s\nQ0.7 = %s\n\n',q43.bin, q34.bin, q07.bin);

disp('Using Twos complement:');
fprintf('Q4.3 = 00000000 00000000 10111001 11101001\nQ43.4 = 00000000 00000000 10000001 11011000\nQ0.7 = 11111101 00000000 10000001 10000000\n');

% b)
step_size_q43 = 2^(-3);
step_size_q34 = 2^(-4);
step_size_q07 = 2^(-7);

dynamic_range_q43 = [-2^4 (2^4)-step_size_q43] %Q4.3
dynamic_range_q34 = [-2^3 (2^3)-step_size_q34] %Q3.4
dynamic_range_q07 = [-2^0 (2^0)-step_size_q07] %Q0.7