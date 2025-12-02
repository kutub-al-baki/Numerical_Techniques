clc; clear all;
f=@(x)x^3+x-1;
xl=0;     
xu=1;               
toll=0.001;       
i=0;             
if f(xl)*f(xu)>0 
    disp('No root in the given interval.');
else
    disp('xl      f(xl)     xu      f(xu)     xr      f(xr)');
    while (abs((xu-xl)/2)>toll)
        xr=(xl+xu)/2;
        fprintf('%1.4f %1.4f %1.4f %1.4f %1.4f %1.4f\n', ...
            xl,f(xl),xu,f(xu),xr,f(xr));
        if (abs(f(xr))<toll)    
            break;
        end
        if f(xl)*f(xr)>0
            xl=xr;
        else
            xu=xr;
        end
        i=i+1;
    end
    disp(['Approximate root is x = ',num2str(xr,'%1.4f'), ...
        'found in',num2str(i),'iterations.']);
end
