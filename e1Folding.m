clc;
clear all
close all

a = input('Take Amplitude: ') ;
f = input('Take Frequency : '); %cycles
t = 0:0.01:1;

analog = a*sin(2*pi*f*t); %origial signal
analogFol = fliplr(analog); % folded/mirror 

subplot(2,2,1);
plot(t,analog);
title('Original Analog Signal');
xlabel('time period')
ylabel('amplitude');

subplot(2,2,3);
plot(t,analogFol);
title('folded analog signal');
xlabel('time period')
ylabel('amplitude');

%for discrete signal
discreteOriginal = analog;
foldedDiscrete = fliplr(discreteOriginal);

subplot(2,2,2);
stem(t,discreteOriginal);
title('original discrete signal');
xlabel('time sample')
ylabel('amplitude');

subplot(2,2,4);
stem(t,foldedDiscrete);
title('folded discrete signal');
xlabel('time sample')
ylabel('amplitude');