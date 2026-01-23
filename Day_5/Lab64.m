clc;
clear all;
close all;

x_dat=[1 2 3 4 5];
y_dat=[1 3 3 4 5];

a=[1 1 1 1;8 4 2 1;27 9 3 1;64 16 4 1;125 25 5 1];
b=[1 3 3 4 5]';

m=a'*a;
n=a'*b;
c=inv(m)*n;

y=@(x) c(1)*x.^3+c(2)*x.^2+c(3)*x+c(4);
x_arr=0:0.1:7;
plot(x_arr,y(x_arr),x_dat,y_dat);
