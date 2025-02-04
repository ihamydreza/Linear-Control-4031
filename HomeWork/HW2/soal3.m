clear; clc
s = tf('s');
hold on
k = 5;
G = k/(s^2+4*s+k);
step(G , 10);



