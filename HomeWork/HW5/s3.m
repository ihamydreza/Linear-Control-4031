clear all, clc,clf
s = tf('s');

sys = (5*(-s+1)*exp(-2*s))/(s*(5*s+1));
margin(sys)

