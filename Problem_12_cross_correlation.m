clc;
clear all;
close all;

x  = input('Samples for x(n): ');
xn = input('Sample range: ');

subplot(3,1,1);
stem(xn,x);
xlabel('samples');
ylabel('x(n)');
title('original signal x(n)');

h  = input('Samples for h(n): ');
hn = input('sample range: ');
% Sample range reverse[0,3] => [-3,0] korbe flip o korbe
hn = -fliplr(hn);

subplot(3,1,2);
stem(hn,h);
xlabel('samples');
ylabel('h(n)');
title('impulse reponse h(n)');

y  = xcorr(x,h);
start_y = min(xn) + min(hn);
end_y = max(xn) + max(hn);
yn = start_y:1:end_y;

subplot(3,1,3);
stem(yn,y);
xlabel('samples');
ylabel('y(n)');
title('correlated signal y(n)');