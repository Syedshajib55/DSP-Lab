clc;
clear all;
close all;
x=input('Enter the first sequence: ');
n1=input('Enter the time sample range:');
subplot(3,1,1);
stem(n1,x);
xlabel('n---->');
ylabel('x(n)');
title('original signal x(n)');

h=input('Enter the second sequence: ');
n2=input('Enter the time sample range:');
n2=-fliplr(n2);
subplot(3,1,2);
stem(n2,h);
xlabel('n---->');
ylabel('h(n)');
title('impulse reponse h(n)');

z=[];
h=fliplr(h);
for i=1:length(x)
    g=h.*x(i);
    z=[z;g];
end
[r c]=size(z);
k=r+c;
t=2;
y=[];
sum=0;
while(t<=k)
    for i=1:r
        for j=1:c
            if((i+j)==t)
               sum=sum+z(i,j);
            end
        end
    end
    t=t+1;
    y=[y sum];
    sum=0;
end
nl=min(n1)+min(n2);
nh=max(n1)+max(n2);
t=nl:1:nh;
subplot(3,1,3);
stem(t,y);

xlabel('n----->');
ylabel('y(n)');
title('cross-correlated signal y(n)');
