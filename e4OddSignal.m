clc;
clear all;
close all;

x = input('Enter Samples: ');
r = input('Sample Range: ');

y = fliplr(x);
oddSignal = (x-y)/2;

subplot(3,2,1);
stem(r,x);
xlabel('Time samples');
ylabel('Amplitude');
title('Original signal');

subplot(3,2,2);
stem(r,y);
xlabel('Time samples');
ylabel('Amplitude');
title('Folded signal');

subplot(3,1,3);
stem(r,oddSignal);
xlabel('Time samples');
ylabel('Amplitude');
title('Odd signal');

%input: [-3 1 2 -4 2]
%range : [-2:2]
%even output:[-0.5 -1.5 2 -1.5 -0.5 ]
%odd ouput: [-2.5 2.5 0 -2.5 2.5]