x = [2 4 6 7 10];
y = [3 5 3 8 0];

n = length(x) - 1;
x_given = 0:0.1:10;

sum = 0;
for i = 1:(n+1)
    product = 1;
    for j = 1:(n+1)
        if j ~= i
            product = (product .* (x_given - x(j)) / (x(i) - x(j)));
        end
    end
    sum = sum + product * y(i);
end

plot(x_given, sum, '-o')
hold on
plot(x, y, '*')
hold off
