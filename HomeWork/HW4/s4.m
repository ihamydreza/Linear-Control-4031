s = tf('s');

sys = (-(s+1)*(s+2)*(s+3)*(s+4))/((s^3)*(s+100));
nyquist(sys)