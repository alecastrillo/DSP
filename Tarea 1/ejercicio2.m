%-------------------------
% Ejercicio 4: Graficar 2 funciones y verifigurar si son periodicas.
% Integrantes: ALejandra Castrillo - Yostin Chavarria - Cristhian Rojas
% Fecha: 12/03/2019
%-------------------------


figure('Name', 'Ejercicio 2');

subplot(2,1,1);
t  = 0:0.01:2;  %Valores del tiempo para graficar.
x1 = exp(cos((40*pi*t)/9)); %Funcion continua.
plot(t, x1, 'r'); %Se grafica la funcion continua.

subplot(2,1,2);
n  = 0:1:36; %Valores de muestras para graficar.
x2 = exp(cos((40*pi*n)/9)); %Funcion discreta.
stem(n, x2, 'filled', 'g') %Se grafica la funcion discreta.
axis tight;
