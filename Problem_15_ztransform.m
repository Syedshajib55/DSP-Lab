clc;
clear all;
close all;

syms n m w;
disp('x[n] = ');
a = (1/2)^n -(1/3)^n;
disp(a);
disp('x[z] = ');
b = ztrans(a);
disp(b)
pretty(b)

fprintf('z transform of unit impulse signal')
a = ztrans(kroneckerDelta(n))

fprintf('z transform of shifted impulse signal')
b = ztrans(kroneckerDelta(n-1))

fprintf('z transform of unit step signal')
c = ztrans(heaviside(n))

fprintf('z transform of cosine signal')
d = ztrans(cos(w*n))

fprintf('z transform of sine signal')
e = ztrans(sin(w*n))

fprintf('z transform of n')
f = ztrans(n)




