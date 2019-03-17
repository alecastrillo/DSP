%-------------------------
% Ejercicio 3: Graficar cuatro funciones dadas y a partir de estas obtener otras tres funciones
% más para graficarlas.
% Integrantes: ALejandra Castrillo - Justin Chavarria - Cristhian Rojas
% Fecha: 11/03/2019
%-------------------------

n  = 0:1:36; # Se declara el vector de la variable discreta n.

# Se declaran las funciones a graficar según especificación del ejercicio
x1 = cos((pi*n)/2);
x2 = sin((pi*n)/8);
x3 = cos((pi*n)/4 + pi/3);
x4 = cos((2*n)/pi);

# Se configuran los gráficos en la figura 1.
figure('Name', 'Ejercicio 3 - XS');

subplot(2,2,1);
stem(n, x1, 'filled', 'g');
axis tight;
title(" X1 ");
xlabel("variable independiente n"); 
ylabel("valores de la función x1(n)"); 

subplot(2,2,2);
stem(n, x2, 'filled', 'r');
axis tight;
title(" X2 ");
xlabel("variable independiente n"); 
ylabel("valores de la función x2(n)"); 

subplot(2,2,3);
stem(n, x3, 'filled', 'b');
axis tight;
title(" X3 ");
xlabel("variable independiente n"); 
ylabel("valores de la función x3(n)"); 

subplot(2,2,4);
stem(n, x4, 'filled', 'y');
axis tight;
title(" X4 ");
xlabel("variable independiente n"); 
ylabel("valores de la función x4(n)"); 

# Se delcaran las funciones compuestas a partir de las funciones base.
y1 = x1 + x2;
y2 = x1 + x2 - x3;
y3 = x1 + x2 - x3 + 2*x4;

#Se configuran las gráficas de las funciones compuestas.
figure('Name', 'Ejercicio 3 - YS');

subplot(3,1,1);
stem(n, y1, 'filled', 'g');
axis tight;
title(" Y1 ");
xlabel("variable independiente n"); 
ylabel("función y1(n) "); 

subplot(3,1,2);
stem(n, y2, 'filled', 'r');
axis tight;
title(" Y2 ");
xlabel("variable independiente n"); 
ylabel("función y2(n) "); 

subplot(3,1,3);
stem(n, y3, 'filled', 'b');
axis tight;
title(" Y3 ");
xlabel("variable independiente n"); 
ylabel("función y3(n)"); 