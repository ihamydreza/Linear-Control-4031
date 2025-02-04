clear all, clc,clf
s = tf('s');

sys = (5*(-s+1))/(5*s*s-4*s+5);
bode(sys)
