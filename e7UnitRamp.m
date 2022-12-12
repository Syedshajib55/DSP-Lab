range = input('Input range: ');%take 5 / [-5:5]
n = -range : range;
unitRamp = (n=0).*1;

stem(n , unitRamp);
xlabel('Time Sample (n) ');
ylabel('Amplitude');
title('Unit Ramp Signal');