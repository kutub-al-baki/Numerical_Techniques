clc;
clear all;
close all;

x_dat=[1 2 3 4 5];
y_dat=[1 3 3 4 5];

a=[1 1;2 1;3 1;4 1;5 1];
b=[1 3 3 4 5]';

m=a'*a;
n=a'*b;
c=inv(m)*n;

y=@(x) c(1)*x+c(2);
x_arr=0:0.1:5;
plot(x_arr,y(x_arr),x_dat,y_dat);
