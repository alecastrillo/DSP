%-------------------------
% Ejercicio 6
%-------------------------

amplitude = 10;
fo        = 200000;
fs        = 20500;
duration  = 1;
t         = 0:1/fs:duration;
a         = amp*sin(2*pi*fo*t);


samplesPerPeriod = fs/fo
sound(a,fs);
figure(1);
plot(t(1:5*samplesPerPeriod), a(1:5*samplesPerPeriod));