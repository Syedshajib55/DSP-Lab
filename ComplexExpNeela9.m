clc;
clear all;
close all;
%sample input like mam output :
%magnitude : 0.95
%Lower limit of length of sequences: 0
%Upper limit of length of sequences: 120
r=input('Magnitude: ');
w=0.1*pi %frequency in radians
N=input('Lower limit of length of sequences: ');
NN=input('Upper limit of length of sequences: ');
n=N:NN;
x=(r.*exp(j*w)).^n;
stem(n,real(x),'linewidth',2);
grid on;
xlabel('Time');
ylabel('Amplitude');
title('Real Part of x(n)');
