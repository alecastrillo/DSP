%-------------------------
% Ejercicio 2: Gráfico de dos funciones X1(t) y X2(N).
% Integrantes: ALejandra Castrillo - Justin Chavarria - Cristhian Rojas
% Fecha: 11/03/2019
%-------------------------

figure('Name', 'Ejercicio 2'); # Función para configurar el nombre de la figura del gráfico resultante.

subplot(2,1,1); # Función para establecer muliples gráficos en una figura.
t  = 0:0.01:2; # Se declara un vector para el tiempo (de 0 a 2 de 0.01 en 0.01).
x1 = exp(cos((40*pi*t)/9)); # Se declara la función X1 según especificación del ejercicio.
plot(t, x1, 'r'); # Función para graficar la función X1.
xlabel("variable independiente t"); #Función para esteblcer el nombre del eje x de un gráfico.
ylabel("valores de la función x1(t)"); #Función para esteblcer el nombre del eje y de un gráfico.

subplot(2,1,2);
n  = 0:1:36; # Se declara el vector para la variable discreta n (de 0 a 36 de 1 en 1).
x2 = exp(cos((40*pi*n)/9)); # Se declara la función X2 según especificación del ejercicio.
stem(n, x2, 'filled', 'g') # Función útil para graficar secuencias discretas, con configuración de 'llenado' en los círculos.
xlabel("variable independiente n");
ylabel("valores de la función x2(n)");
axis tight;