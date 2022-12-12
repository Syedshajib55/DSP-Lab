range = input('Input range: ');%take 5 / [-5:5]
n = -range : range;
unitSample = (n==0).*1;

stem(n , unitSample);
xlabel('Time Sample (n) ');
ylabel('Amplitude');
title('Unit Ramp Signal');