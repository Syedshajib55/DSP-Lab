n=0:100;
x_r=((0.9).^n).*cos((pi.*n)./10);
stem(n,x_r);
xlabel('Time sample');
ylabel('Amplitude');