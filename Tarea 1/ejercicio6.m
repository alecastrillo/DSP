%-------------------------
% Ejercicio 6
%-------------------------

% Se reproduce un tono con todos sus armónicos en el espectro audible
% Integrantes: Alejandra Castrillo - Yostin Chavarria - Cristhian Rojas
% Fecha: 15/03/2019

fs = 44100;                                             % Frecuencia de muestreo para una señal de audio
t  = 0:1/fs:5;                                          % Vector del tiempo
fo = input('Digite el valor de la frecuencia: ');       % Frecuencia fo como entrada                    
cantidad_de_armonicos = round(22000/fo);   

notes = fo;    % Se crea un vector con el valor de fo

for i = 2:cantidad_de_armonicos    
    notes = [notes;fo*i];       % Se calculan las frecuencias armonicas y se guardan en un vector
end

% Se reproduce el tono
x = cos(2*pi*notes*t); 
sig = reshape(x',cantidad_de_armonicos*length(t),1);
soundsc(sig,fs);
