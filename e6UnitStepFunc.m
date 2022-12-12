t = -2 :0.01 : 3;
x=heaviside(t);
subplot(2,1,1);
plot(t,x);

subplot(2,1,2);
stem(t,x);
title('Unit Step Sequence');