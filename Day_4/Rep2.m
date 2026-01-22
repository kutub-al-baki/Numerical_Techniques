clc;clear all;close all;
x1 = -1; y1 = 0;
x2 =  2; y2 = 1;
x3 =  3; y3 = 1;
x4 =  5; y4 = 2;
p1 = y1 * conv([1 -x2], conv([1 -x3],[1 -x4]))/((x1-x2)*(x1-x3)*(x1-x4));
p2 = y2 * conv([1 -x1], conv([1 -x3],[1 -x4]))/((x2-x1)*(x2-x3)*(x2-x4));
p3 = y3 * conv([1 -x1], conv([1 -x2],[1 -x4]))/((x3-x1)*(x3-x2)*(x3-x4));
p4 = y4 * conv([1 -x1], conv([1 -x2],[1 -x3]))/((x4-x1)*(x4-x2)*(x4-x3));
p = p1 + p2 + p3 + p4
x = x1:0.01:x4+1; 
plot([x1 x2 x3 x4],[y1 y2 y3 y4],'o'); 
grid on;
plot(x, polyval(p,x));
polyval(p,2.5)
