%-------------------------
% Ejercicio 3: Graficar cuatro funciones dadas y a partir de estas obtener otras tres funciones
% más para graficarlas.
% Integrantes: ALejandra Castrillo - Yostin Chavarria - Cristhian Rojas
% Fecha: 11/03/2019
%-------------------------

% Se declaran las funciones a graficar según especificación del ejercicio
x1 = cos((pi*n)/2);
x2 = sin((pi*n)/8);
x3 = cos((pi*n)/4 + pi/3);
x4 = cos((2*n)/pi);

% Se configuran los gráficos en la figura 1.
figure('Name', 'Ejercicio 3 - XS');

subplot(2,2,1);
stem(n, x1, 'filled', 'g');
axis tight;
<<<<<<< HEAD
title(" X1 ");
=======
title(' X1 ');
xlabel('variable independiente n'); 
ylabel('valores de la función x1(n)'); 
>>>>>>> ad1577e58053c200d1c1d061f5b6d0d308d3892d

subplot(2,2,2);
stem(n, x2, 'filled', 'r');
axis tight;
<<<<<<< HEAD
title(" X2 ");
=======
title(' X2 ');
xlabel('variable independiente n'); 
ylabel('valores de la función x2(n)'); 
>>>>>>> ad1577e58053c200d1c1d061f5b6d0d308d3892d

subplot(2,2,3);
stem(n, x3, 'filled', 'b');
axis tight;
<<<<<<< HEAD
title(" X3 ");
=======
title(' X3 ');
xlabel('variable independiente n'); 
ylabel('valores de la función x3(n)'); 
>>>>>>> ad1577e58053c200d1c1d061f5b6d0d308d3892d

subplot(2,2,4);
stem(n, x4, 'filled', 'y');
axis tight;
<<<<<<< HEAD
title(" X4 ");
=======
title(' X4 ');
xlabel('variable independiente n'); 
ylabel('valores de la función x4(n)'); 
>>>>>>> ad1577e58053c200d1c1d061f5b6d0d308d3892d

% Se delcaran las funciones compuestas a partir de las funciones base.
y1 = x1 + x2;
y2 = x1 + x2 - x3;
y3 = x1 + x2 - x3 + 2*x4;

%Se configuran las gráficas de las funciones compuestas.
figure('Name', 'Ejercicio 3 - YS');

subplot(3,1,1);
stem(n, y1, 'filled', 'g');
axis tight;
<<<<<<< HEAD
title(" Y1 "); 
=======
title(' Y1 ');
xlabel('variable independiente n'); 
ylabel('función y1(n) '); 
>>>>>>> ad1577e58053c200d1c1d061f5b6d0d308d3892d

subplot(3,1,2);
stem(n, y2, 'filled', 'r');
axis tight;
<<<<<<< HEAD
title(" Y2 ");
=======
title(' Y2 ');
xlabel('variable independiente n'); 
ylabel('función y2(n) '); 
>>>>>>> ad1577e58053c200d1c1d061f5b6d0d308d3892d

subplot(3,1,3);
stem(n, y3, 'filled', 'b');
axis tight;
<<<<<<< HEAD
title(" Y3 "); 
=======
title(' Y3 ');
xlabel('variable independiente n'); 
ylabel('función y3(n)'); 
>>>>>>> ad1577e58053c200d1c1d061f5b6d0d308d3892d
