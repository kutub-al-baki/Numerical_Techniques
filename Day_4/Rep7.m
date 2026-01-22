clc; clear; close all;
x = [1 3 4 5];                     
y = [6 28 45 66];  
x_given = 0:0.5:5;
n = length(x);        
m = length(x_given);  
%Langarance Interpolation
y_l = zeros(1, m); 
for i = 1:n
    L = ones(1, m); 
    for j = 1:n
        if j ~= i
            L = L.*(x_given - x(j)) / (x(i) - x(j));
        end
    end
    y_l=y_l+y(i)*L; 
end
% Newton Dibided Difference Interpolation
z = zeros(n,n);
for i = 1:n
    z(i,1) = y(i); 
end

for j = 2:n
    for i = 1:n-j+1
        z(i,j) = (z(i+1,j-1) -z(i,j-1)) / (x(i+j-1) - x(i));
    end
end


y_n = zeros(1, m);
for k = 1:m
    y_val = z(1,1);
    for i = 2:n
        prod = 1;
        for j = 1:i-1
            prod = prod * (x_given(k) - x(j));
        end
        y_val = y_val + z(1,i) * prod;
    end
    y_n(k) = y_val;
end

disp('Lagrange Interpolated values:');
disp(y_l);

disp('Newton Interpolated values:');
disp(y_n);

% figure;
% plot(x_given, y_l, '-o', 'LineWidth',1.5);
% grid on;
% plot(x_given, y_n, '-s', 'LineWidth',1.5);
% plot(x, y, '*r', 'MarkerSize',10);
% grid on;
% xlabel('x'); ylabel('y');
% title('Interpolation Comparison');
% legend('Lagrange','Newton','Data Points');
% grid on;