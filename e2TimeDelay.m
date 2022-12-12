clc;
clear all;
close all;

x = input('Enter dts signals : ')
n = input('Sample range: ');
n1 = input('Enter Delay amount: ');
%x = [-2 0 1 -3 2 -1 3]; sample signals
subplot(2,1,1);
stem(n,x);%n and x er value gula k x,y format a auto niye nibe
xlabel('Time samples');
ylabel('Amplitude');
title('Original signal');

m = n+n1;%time delay/right shift korlam
subplot(2,1,2);
stem(m,x);
xlabel('Time samples');
ylabel('Amplitudes');
title('Delayed signal');