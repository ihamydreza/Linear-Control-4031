
s = zpk('s');
G0 = 1 ;
G1 = 1/s ;
G2 = 2*s + 1;
G3 = 1/(s*s + 1);
G4 = s/(s+1);
H1 = 1/s;
H2 = (s-1)/(s+3);
H3 = s/(s*s + 3*s + 1);
H4 = 1/(s+2);
systemnames = 'G1 G2 G3 G4 H1 H2 H3 H4';
inputvar = '[Y1]';
outputvar = '[G3 - H4]';
input_to_G1 = '[Y1 - H1 - H3]';
input_to_G2 = '[G1]';
input_to_G3 = '[G4 - H2]';
input_to_G4 = '[Y1 - H1 - H3]';
input_to_H1 = '[G1]';
input_to_H2 = '[G3 - H4]' ;
input_to_H3 = '[G3-H4]';
input_to_H4 = '[G3 - H4]';
sysoutname = 'plant_ic';
cleanupsysic = 'yes';
sysic ;
plant_ic.InputName = {'Y1'};
plant_ic.OutputName = {'Y5'};
plant_ic = minreal(plant_ic);

plant_ic_tf = tf(plant_ic)
disp(plant_ic_tf);
pol = pole(plant_ic)
plant_ic
