%%
%1
% بارگذاری داده‌ها از فایل Data.mat
load('Data.mat');

% استخراج مقادیر
Magnitude = Data.magnitude;
Phase = Data.phase;
Omega = Data.omega;

% تبدیل به مقیاس دسی‌بل
Magnitude_dB = 20 * log10(Magnitude);

% رسم نمودار بودی
figure;

% نمودار اندازه
subplot(2,1,1);
semilogx(Omega, Magnitude_dB, 'b', 'LineWidth', 1.5);
grid on;
xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB)');
title('Bode Plot - Magnitude');

% نمودار فاز
subplot(2,1,2);
semilogx(Omega, Phase, 'r', 'LineWidth', 1.5);
grid on;
xlabel('Frequency (rad/s)');
ylabel('Phase (degrees)');
title('Bode Plot - Phase');

%%
%2
Omega = log10(Data.omega);
delay = -(Phase.*(pi/180)) ./ Omega;
figure;
subplot(1,1,1);
plot(Omega, delay, 'r', 'LineWidth', 1.5);
grid on;
xlabel('Frequency (rad/s)');
ylabel('Delay (s)');
title('Delay');
%%
%3
s = tf('s');
sys = (0.1*(s-2)/(s*(s^2 + 0.9*s+9)));
grid on ;
bode(sys)
grid on;

%%
%5
figure;
rlocus(sys);
hold on
rlocus(-sys,'--');
grid on;
title('Root Locus');
xlabel('Real Axis');
ylabel('Imaginary Axis');

%%
%6
sys1 = 0.1/(s^2 + 0.9*s + 10);
sys2 = (1/0.54)*((0.224*s+1)/(0.77*s+1))*(0.1/(s^2 + 0.9*s + 10));
step(sys1)
%step(sys2)
%%
%امتیازی
systemIdentification;
tf1