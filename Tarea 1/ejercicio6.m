%-------------------------
% Ejercicio 6: Programa que que sintetiza una señal y reproduce un tono según una frecuncia  
% dada en Hz, así como todos los armónicos del espectro audible en dicha frecuencia.
% Integrantes: ALejandra Castrillo - Justin Chavarria - Cristhian Rojas
% Fecha: 12/03/2019
%-------------------------

clc;
clear all;

fs=44100;               %Frecuencia de muestreo para una señal de audio
t=[0:1/fs:5];           %Vector del tiempo
fo=input('Digite el valor de la frecuencia: ');  %Frecuencia fo como entrada

cantidad_de_armonicos = 22000/fo;                       %Se calcula el tono + los armonicos
cantidad_de_armonicos = round(cantidad_de_armonicos);   %Se redondea a un numero entero para poder utilizar el for

notes = [fo];    %Se crea un vector con el valor de fo

for i=2:cantidad_de_armonicos    
    notes = [notes;fo*i];       %Se calculan las frecuencias armonicas y se guardan en un vector
end

%Se reproduce el tono
x = cos(2*pi*notes*t);
sig = reshape(x',cantidad_de_armonicos*length(t),1); % Esta función se utiliza para reformular el vector de x con el vector que
                 % contiene la cantidad de armonicos generados según la frecuencia de entrada.
soundsc(sig,fs); % Finalmente esta función convierte una matriz o vector de datos en sonidos, con el segundo argumento
                 % se establece la frecuencia de muestreo de la señal de audio.