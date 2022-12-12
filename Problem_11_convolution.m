clc;
clear all;
close all;

x  = input('Samples for x(n): ');
xn = input('Sample range: ');

subplot(3,1,1);
stem(xn,x);
xlabel('Samples');
ylabel('x(n)');
title('Original signal x(n)');

h  = input('Samples for h(n): ');
hn = input('Sample range: ');

subplot(3,1,2);
stem(hn,h);
xlabel('samples');
ylabel('h(n)');
title('impulse reponse h(n)');

y  = conv(x,h);
start_y = min(xn) + min(hn);
end_y = max(xn) + max(hn);
yn = start_y:1:end_y;
display(yn);
subplot(3,1,3);
stem(yn,y);
xlabel('Samples');
ylabel('y(n)');
title('Convoluted signal y(n)');

