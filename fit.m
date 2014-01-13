n=20;

close all
t=-100:0.01:100;
u=t<1;
sigma=1;
y=1/(2*pi*sigma^2)^0.5*exp(-t.^2/(2*sigma^2));
% sum(y)*0.1
figure;plot(t,y)
figure;plot(t,u)
conv_f=conv(double(u),y,'same');
figure;plot(t,conv_f)

pS = polyfit(xS,double(conv_f),n);
fS = polyval(pS,xS);
