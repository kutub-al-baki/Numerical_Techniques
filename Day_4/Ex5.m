x = [0 1 2 3 4 5 6];
y = [0 0.8415 0.9093 0.1411 -0.7568 -0.9589 -0.2794];

n = length(x) - 1;
x_given = 3:0.5:4.8;

sum = 0;
for i = 1:(n+1)
    product = 1;
    for j = 1:(n+1)
        if j ~= i
            product = product * (x_given - x(j)) / (x(i) - x(j));
        end
    end
    sum = sum + product * y(i);
end

plot(x_given, sum, '-o')
hold on
plot(x, y, '*')
hold off
