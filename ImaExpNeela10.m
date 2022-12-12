clc;
clear all;
close all;
r=input('Magnitude: ');
%sample input like mam output :
%magnitude : 0.95
%Lower limit of length of sequences: 0
%Upper limit of length of sequences: 120
w=0.1*pi %frequency in radians
N=input('Lower limit of length of sequences: ');
NN=input('Upper limit of length of sequences: ');
n=N:NN;
x=(r.*exp(j*w)).^n;
stem(n,imag(x),'linewidth',2);
grid on;
xlabel('Time');
ylabel('Amplitude');
title('Imaginary Part of x(n)');