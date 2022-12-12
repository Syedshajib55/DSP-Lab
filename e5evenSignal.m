clc;
clear all;
close all;

x = input('Enter Samples: ');
r = input('Sample range: ');

y = fliplr(x);

even_signal = (x+y)/2;

subplot(3,1,1);
stem(r,x);
xlabel('Time samples');
ylabel('Amplitude');
title('Original signal');

subplot(3,1,2);
stem(r,y);
xlabel('Time samples');
ylabel('Amplitude');
title('Folded signal');

subplot(3,1,3);
stem(r,even_signal);
xlabel('Time samples');
ylabel('Amplitude');
title('Even signal');