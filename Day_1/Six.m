clc; clear;
R=220; 
L=0.5; 
C=0.6e-6;
F=@(w)sqrt(R^2+(w*L-1./(w*C)).^2)-400;
for a=100:50:6000
    b=a+500;
    if F(a)*F(b)<0
        fprintf("Valid interval found: [%d, %d]",a,b);
        break;
    end
end
