N = 30;
n = -N : 1 : N;
x = [zeros(1 , N) 0 n(1 , 32 : 61)];
stem(n , x);
xlabel('Time');
ylabel('Amplitude');
title('Unit Ramp Signal');