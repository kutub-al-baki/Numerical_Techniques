clc;clear all;
a=300;     
b=800;
toll=1e-4;
n=ceil((log(b-a)-log(toll))/log(2));
fprintf("Number of bisection steps required = %d\n", n);
