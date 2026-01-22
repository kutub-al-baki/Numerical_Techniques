clc;clear all;close all;
x1 = 0; y1 = -2;
x2 = 2; y2 =  1;
x3 = 4; y3 =  4;
f_21  = (y2-y1)/(x2-x1);
f_32  = (y3-y2)/(x3-x2);
f_31 = (f_32-f_21)/(x3-x1);
p1 = [0 0 y1];
p2 = f_21*[0 1 -x1];
p3 = f_31*conv([1 -x1],[1 -x2]);
 
p = p1 + p2 + p3;
