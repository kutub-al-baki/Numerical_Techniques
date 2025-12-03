clc;
clear all;
f=@(x) 3*x+sin(x)-exp(x);
fd=@(x)3+cos(x)-exp(x);
tol=1e-7;   
N=100;      
r(1)=1;  
for i=1:N
    r(i+1)=r(i)-f(r(i))/fd(r(i)); 
    error=abs(r(i+1)-r(i));
    if error<tol
        break;
    end
end
disp(['Root is: ',num2str(r(i+1))]);
disp(['Iterations taken: ',num2str(i)]);