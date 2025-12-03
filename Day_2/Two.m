clc;clear all;
f=@(x)3.*x+sin(x)-exp(x);
df=@(x)3+cos(x)-exp(x);
x=0;           
tol=1e-7;
fprintf(' n    x_n (start)          f(x_n)              f''(x_n)           x_{n+1}              |dx|\n');
for n=1:50
    fx=f(x);
    dfx=df(x);
    if dfx==0
        error('zero at iteration %d', n)
    end
    xnew=x-fx/dfx;
    fprintf('%2d   %18.15f   %15.12e   %15.12f   %18.15f   %10.12e\n',n,x,fx,dfx,xnew,abs(xnew-x));
    if abs(xnew-x)<tol
        fprintf('Converged in %d iterations to x = %.16f',n,xnew,tol);
        break
    end
    x = xnew;
end
