clear; clc
s = tf('s');
hold on
clear all, clc, clf
s = tf('s');
G = (5*s + 10)/(s^2 + 4*s + 5);
G = G*130*(6.5*s + 1)
pole(G)
zero(G)
hold on
step(G , 5);
hold off


