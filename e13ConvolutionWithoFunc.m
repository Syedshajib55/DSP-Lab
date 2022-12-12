clc;
clear all;
close all;

x  = input('Samples for x(n): ');
xn = input('sample range: ');

subplot(3,1,1);
stem(xn,x);
xlabel('n');
ylabel('x(n)');
title('original signal x(n)');

h  = input('Samples for h(n): ');
hn = input('sample range: ');

subplot(3,1,2);
stem(hn,h);
xlabel('n');
ylabel('h(n)');
title('impulse response h(n)');

%now calculate convolution
%creating result matrix
z=[];
for i=1:length(x)
    g = h .* x(i);
    z = [z;g];
end

[r c]=size(z);
target = r+c;
start = 2;
y=[];
diagonalSum=0;
while(start<=target)
    for(i=1:r)
        for(j=1:c)
            if((i+j)==start)
                diagonalSum = diagonalSum + z(i,j);
            end
        end
    end
    
    start = start + 1;
    y = [y diagonalSum];
    diagonalSum=0;
end

start_y = min(xn) + min(hn);
end_y = max(xn) + max(hn);
yn = start_y:1:end_y;
subplot(3,1,3);
stem(yn,y);
xlabel('n');
ylabel('y(n)');
title('Convoluted signal y(n)');