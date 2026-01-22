clear all;close all;clc
 
x1=2; y1=3;
x2=4; y2=5;
x3=6; y3=3;
x4=7; y4=8;
x5=10; y5=0;

p2 = @(x) y1*(x-x2).*(x-x3).*(x-x4).*(x-x5)/((x1-x2)*(x1-x3)*(x1-x4)*(x1-x5)) ...
        + y2*(x-x1).*(x-x3).*(x-x4).*(x-x5)/((x2-x1)*(x2-x3)*(x2-x4)*(x2-x5)) ...
        + y3*(x-x1).*(x-x2).*(x-x4).*(x-x5)/((x3-x1)*(x3-x2)*(x3-x4)*(x3-x5))...
        + y4*(x-x1).*(x-x2).*(x-x3).*(x-x5)/((x4-x1)*(x4-x2)*(x4-x3)*(x4-x5))...
        + y5*(x-x1).*(x-x2).*(x-x4).*(x-x3)/((x5-x1)*(x5-x2)*(x5-x4)*(x5-x3))...
 
disp([p2(x1) p2(x2) p2(x3) p2(x4) p2(x5)]);
plot([x1 x2 x3 x4 x5],[y1 y2 y3 y4 y5],'o'); hold on;grid on
 
x = x1:0.1:x5+2; plot(x,p2(x));
 
p2(2.5)% Example Point to display
