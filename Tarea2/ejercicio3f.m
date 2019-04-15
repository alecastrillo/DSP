
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%        Ejercicio 3.f        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;
a = 0.9;
D = 20;
varianza = 0.01; 
sigma = sqrt(varianza);

x = [-1, -1, -1, +1, +1, +1, +1, -1, +1, -1, +1, +1, -1, -1, +1];
mlim = 300-length(x)-99;
x = [zeros(1,99),x,zeros(1,mlim)];
v = randn(1,300).*sigma; 

for n = 100:300
    y(n) = a*x(n - D) + v(n);
end

figure('Name', 'Señales de entrada y salida con varianza 0.01');
subplot(3,1,1);
stem(x(100:300-mlim));
title ("x(n)");
xlabel ("n");

subplot(3,1,2);
stem(y(100:299));
title ("y(n)");
xlabel ("n");

subplot(3,1,3);
rxy = xcorr2(x,y);
stem(rxy(50:349));
title ("rxy");
xlabel ("n");
retardo001=max(rxy)

