clc;clear all;
f=@(x) exp(x.^2)+0.3*log(x)-2*sqrt(x);
x=linspace(0.01,2,400);
plot(x,f(x)); 
grid on;
xlabel('x');
ylabel('f(x)');
title('Plot of f(x) = ');
