clc; clear all;
f=349;
omega=2*pi*f;
R=220;
L=0.5;
C=0.6e-6;
Z=sqrt(R^2+(omega*L-1/(omega*C))^2);
fprintf('Impedance at %.0f Hz is %.2f Ohms\n', f, Z);
