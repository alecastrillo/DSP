%-------------------------
% Ejercicio 5: Función para muestrear una señal s(t) a s(n),utilizando la fórmula
% dada en el especificación del ejercicio.
% La función recibe como parámetros la amplitud de la señal (A), la frecuancia de la señal (Fo),
% la frecuancia de muestreo (Fs), el intervalo de tiempo para duración finita (ti,tf) y la fase de la señal (C).
% Integrantes: ALejandra Castrillo - Justin Chavarria - Cristhian Rojas
% Fecha: 12/03/2019
%-------------------------
clear;

function sn = ejercicio5(A,Fo,Fs,C,ti,tf) # Se crea la función.

    snFunc           = @(A,Fo,Fs,C,n) A*sin((2*pi*Fo*n)/Fs+C); # Se define el molde de la función a utilizar junto con los parámetros que recibe.
    samplesPerPeriod = Fs/Fo; # Se calcula las muestra por periodo de la señal.
    periods          = (tf-ti) * Fo; # Se calcula el periodo de la señal.
    samples          = 0:1:floor(periods*samplesPerPeriod); # Se determina el número de muestras para la señal finita.
                                    # La funcion floor(), obtiene valor entero más próximo hacia - infinito.
    offset           = ti*2*pi + C; # Se calcula el argumento de la función.
    sn               = snFunc(A,Fo,Fs,offset,samples); # Se llama a la función.
    
    figure('Name', 'Ejercicio 5');
    stem(samples, sn, 'filled', 'g'); # Se grafica la función.
    axis tight;
    title(" s(n) ");

end

% Prueba del profe
ejercicio5(10,500,4000,1,0,0.01)

