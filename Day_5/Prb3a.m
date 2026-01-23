clc; clear; close all;
x_dat = [0; 1; 2; 5];
y_dat = [0; 3; 3; 6];
m = length(y_dat);
x_plot = linspace(min(x_dat), max(x_dat), 100);
figure;
plot(x_dat, y_dat); hold on;
f_line = @(x) c_line(1) + c_line(2)*x;
plot(x_plot, f_line(x_plot));

%% --- Problem 8: Best Line (Linear Regression) ---
% Model: y = c1 + c2*x
% Matrix A has column of 1s and column of x
A1 = [ones(m, 1), x_dat];
b1 = y_dat;

M1 = A1' * A1;
N1 = A1' * b1;
c_line = inv(M1) * N1; % Coefficients [c1; c2]

% Calculate RMSE
y_pred_line = A1 * c_line;
res_line = y_dat - y_pred_line;
RMSE_line = sqrt(sum(res_line.^2) / m);
fprintf('Coefficients (c1, c2): %f, %f \n', c_line);
fprintf('RMSE: %f \n\n', RMSE_line);


%% --- Problem 9: Best Parabola (Quadratic Regression) ---
% Model: y = c1 + c2*x + c3*x^2
A2 = [ones(m, 1), x_dat, x_dat.^2];
b2 = y_dat;

M2 = A2' * A2;
N2 = A2' * b2;
c_quad = inv(M2) * N2; % Coefficients [c1; c2; c3]

y_pred_quad = A2 * c_quad;
res_quad = y_dat - y_pred_quad;
RMSE_quad = sqrt(sum(res_quad.^2) / m);

fprintf('--- Parabola Fit ---\n');
fprintf('Coefficients (c1..c3): %f, %f, %f \n', c_quad);
fprintf('RMSE: %f \n\n', RMSE_quad);


%% --- Problem 10: Degree 3 Polynomial ---
% Model: y = c1 + c2*x + c3*x^2 + c4*x^3
A3 = [ones(m, 1), x_dat, x_dat.^2, x_dat.^3];
b3 = y_dat;

M3 = A3' * A3;
N3 = A3' * b3;
c_cubic = inv(M3) * N3; % Coefficients

y_pred_cubic = A3 * c_cubic;
res_cubic = y_dat - y_pred_cubic;
RMSE_cubic = sqrt(sum(res_cubic.^2) / m);

fprintf('--- Cubic Fit ---\n');
fprintf('Coefficients (c1..c4): %f, %f, %f, %f \n', c_cubic);
fprintf('RMSE: %f \n', RMSE_cubic);

%% --- Plotting Results ---
figure;
plot(x_dat, y_dat); hold on;
f_line = @(x) c_line(1) + c_line(2)*x;
f_quad = @(x) c_quad(1) + c_quad(2)*x + c_quad(3)*x.^2;
f_cubic = @(x) c_cubic(1) + c_cubic(2)*x + c_cubic(3)*x.^2 + c_cubic(4)*x.^3;

plot(x_plot, f_line(x_plot));
plot(x_plot, f_quad(x_plot));
plot(x_plot, f_cubic(x_plot));