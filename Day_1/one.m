clc; clear all;
f=@(x)x.^3+x-1;
a=0;
b=1;
toll=0.0005;  
while(b-a)/2>toll
    c=(a+b)/2;
    if f(c)==0
    break;
    elseif f(a)*f(c)<0
        b=c;
    else
        a=c;
    end
end
root=(a+b)/2;
fprintf("Root =%f",root);
