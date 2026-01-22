clear all;close all;clc
 
x1=  0;y1 = 1;
x2 = 2;y2 = 2;
x3 = 3;y3 = 4;
 
p2 = @(x) y1*(x-x2).*(x-x3)/((x1-x2)*(x1-x3)) ...
        + y2*(x-x1).*(x-x3)/((x2-x1)*(x2-x3)) ...
        + y3*(x-x1).*(x-x2)/((x3-x1)*(x3-x2));
 
disp([p2(x1) p2(x2) p2(x3)]);
plot([x1 x2 x3],[y1 y2 y3],'o'); hold on;grid on
 
x = x1:0.1:x3+2; plot(x,p2(x));
 
p2(2.5)% Example Point to display
