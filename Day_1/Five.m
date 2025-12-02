clc; clear;
R=220; 
L=0.5; 
C=0.6e-6;
F=@(w)sqrt(R^2+(w*L-1./(w*C)).^2)-400;
v1=F(500);
v2=F(1000);
fprintf("F(500)=%f",v1);
fprintf("F(1000)=%f",v2);
if v1*v2 < 0
    disp("Interval [500,1000] is valid");
else
    disp("Interval [500,1000] is NOT valid.");
end
