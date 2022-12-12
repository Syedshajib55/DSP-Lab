range = input('Input range: ');%take 5 / [-5:5]
n = -range : range;
unit = (n>=0).*1;

stem(n , unit);
xlabel('Time Sample (n) ');
ylabel('Amplitude');
title('Unit Step Signal');