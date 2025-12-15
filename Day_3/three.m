clc; clear all;
close all;

f = @(x) x.^3 - x - 1;
xl = 1; 
xu = 2;
tol = 1e-3;

fprintf('\n=========== FALSE POSITION METHOD ===========\n');
xl_fp = xl; 
xu_fp = xu;
i = 0;

if f(xl_fp) * f(xu_fp) > 0
    disp('No root in given bracket');
else
    disp('   xl       f(xl)      xu       f(xu)       xr      f(xr)');
    
    while true
        xr = xu_fp - f(xu_fp) * (xl_fp - xu_fp)/(f(xl_fp) - f(xu_fp));
        fprintf('%1.4f   %1.4f   %1.4f   %1.4f   %1.4f   %1.4f\n', ...
                xl_fp, f(xl_fp), xu_fp, f(xu_fp), xr, f(xr));
        
        if abs(f(xr)) < tol
            break;
        end
        
        if f(xl_fp)*f(xr) < 0
            xu_fp = xr;
        else
            xl_fp = xr;
        end
        
        i = i + 1;
        if i > 100, break; end
    end
end
fprintf('False Position Root = %f   Iterations = %d\n', xr, i);


fprintf('\n=========== BISECTION METHOD ===========\n');
xl_b = xl; 
xu_b = xu;

i = 0;

if f(xl_b) * f(xu_b) > 0
    disp('No root in given bracket');
else
    disp('   xl       f(xl)      xu       f(xu)       xr      f(xr)');
    
    while abs((xu_b - xl_b)/2) > tol
        xr = (xl_b + xu_b)/2;
        fprintf('%1.4f   %1.4f   %1.4f   %1.4f   %1.4f   %1.4f\n', ...
                xl_b, f(xl_b), xu_b, f(xu_b), xr, f(xr));
        
        if abs(f(xr)) < tol
            break;
        end
        
        if f(xl_b)*f(xr) < 0
            xu_b = xr;
        else
            xl_b = xr;
        end
        
        i = i + 1;
        if i > 100, break; end
    end
end

fprintf('Bisection Root = %f   Iterations = %d\n', xr, i);