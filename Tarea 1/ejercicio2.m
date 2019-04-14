%-------------------------
% Ejercicio 2
%-------------------------

% Grafica las funciones x1 y x2 en una misma figura
% Integrantes: Alejandra Castrillo - Yostin Chavarria - Cristhian Rojas
% Fecha: 11/03/2019

figure('Name', 'Ejercicio 2');

subplot(2,1,1);
t  = 0:0.01:2;
x1 = exp(cos((40*pi*t)/9));
plot(t, x1, 'r');

subplot(2,1,2);
n  = 0:1:36;
x2 = exp(cos((40*pi*n)/9));
stem(n, x2, 'filled', 'g')
axis tight;