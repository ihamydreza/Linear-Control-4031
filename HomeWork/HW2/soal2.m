clear; clc
s = tf('s');
hold on
kt = 1;
kb = 0.5;
f = 0.2;
j = 1 ;
ra = 2 ;
km = 0.8;
ka = 1 ;
G = ((km/ra)*1/(j*s+f))/(1 + (km/ra)*(1/(j*s+f))*(kb+kt));
G1 = ((km/ra)*1/(j*s+f))/(1 + (km/ra)*(1/(j*s+f))*(kb));

step(G , 15);
step(G1 , 15);
legend
K_G = dcgain(G);
K_G1 = dcgain(G1);

% محاسبه خطای حالت ماندگار برای ورودی پله واحد
ess_G = 1 / (1 + K_G);
ess_G1 = 1 / (1 + K_G1);

% نمایش نتایج
fprintf('Steady-State Error for G: %.4f\n', ess_G);
fprintf('Steady-State Error for G1: %.4f\n', ess_G1);
