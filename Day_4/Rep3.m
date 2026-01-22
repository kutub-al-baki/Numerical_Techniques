clc;clear all;close all;
x1 = 0; y1 = -2;
x2 = 2; y2 =  1;
x3 = 4; y3 =  4;
p1 = y1 * conv([1 -x2],[1 -x3])/((x1-x2)*(x1-x3));
p2 = y2 * conv([1 -x1],[1 -x3])/((x2-x1)*(x2-x3));
p3 = y3 * conv([1 -x1],[1 -x2])/((x3-x1)*(x3-x2));
p = p1 + p2 + p3;
x = x1:0.1:x3+1;
plot([x1 x2 x3],[y1 y2 y3]); 
grid on;
polyval(p,3)
plot(x, polyval(p,x));
