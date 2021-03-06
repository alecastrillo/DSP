
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%        Ejercicio 3.d        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% varianza = 0.1

clear;
a = 0.9;
D = 20;
o = 0.1; 

x = [ 1, 1, 1, 1, 1, -1, -1, 1, 1, -1, 1, -1, 1];
mlim = 300-length(x)-99;
x = [zeros(1,99),x,zeros(1,mlim)];
v = randn(1,300).*sqrt(o); 

for n = 100:300
    y(n) = a*x(n - D) + v(n);
end

figure('Name', 'Se�ales de entrada y salida con varianza 0.1');
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
retardo01=max(rxy)

% varianza = 1

clear;
a = 0.9;
D = 20;
o = 1; 

x = [ 1, 1, 1, 1, 1, -1, -1, 1, 1, -1, 1, -1, 1];
mlim = 300-length(x)-99;
x = [zeros(1,99),x,zeros(1,mlim)];
v = randn(1,300).*sqrt(o); 

for n = 100:300
    y(n) = a*x(n - D) + v(n);
end

figure('Name', 'Se�ales de entrada y salida con varianza 1');
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
retardo1=max(rxy)
