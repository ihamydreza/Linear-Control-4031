clear; clc
s = tf('s');
hold on
omega = 4/(0.25*1.41);
zeta = 0.25 ;
G = 1.58*omega^2/(s^2 + 2*zeta*omega*s + omega^2);
G1 = 1.58*omega^2/(s^2 + 2*s*omega*zeta + 0.58*omega^2);
G2 = 1.58*omega^2/(s^2 + 2*s*omega*zeta - 0.58*omega^2);
step(G , 5);
step(G1 , 5);
step(G2 , 5);
