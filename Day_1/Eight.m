clc;clear all;
R=220; 
L=0.5; 
C=0.6e-6;
F=@(w)sqrt(R^2+(w*L-1./(w*C)).^2)-400;
a=300;
b=800;
for step=1:3
    c=(a+b)/2;
    fprintf("Step %d:a=%f,b=%.4f,c=%f,F(c)=%f\n",step,a,b,c,F(c));
    if F(a)*F(c)<0
        b=c;
    else
        a=c;
    end
end
