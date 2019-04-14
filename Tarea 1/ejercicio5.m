%-------------------------
% Ejercicio 5
%-------------------------

% Se grafica la funcion s(n) como muestreo y s(t) como funcion continua superpuestas  
% Integrantes: Alejandra Castrillo - Yostin Chavarria - Cristhian Rojas
% Fecha: 15/03/2019

function ejercicio5(A,Fo,Fs,C,ti,tf)
    
    stFunc           = @(A,Fo,Fs,C,t) A*sin((2*pi*Fo*t)+C);     % Función de forma continua
    snFunc           = @(A,Fo,Fs,C,n) A*sin((2*pi*Fo*n)/Fs+C);  % Función en variable discreta
    samplesPerPeriod = Fs/Fo;                                   % Cantidad de muestras por periodo
    periods          = (tf-ti) * Fo;                            % Cantidad de periodos de ti a tf
    n                = 0:1:floor(periods*samplesPerPeriod);     % Array con las muestras
    sn               = snFunc(A,Fo,Fs,C,n);                     % Calculo de la señal discreta
    t                = linspace(ti,tf,300);                     % Variable de tiempo
    st               = stFunc(A,Fo,Fs,C,t);                     % Calculo de la señal continua
    
    figure('Name', 'Ejercicio 5');
    
    hold on; 
    stem(n, sn, 'filled', 'g');                                             % Grafica las muestras 
    plot(linspace(0,floor(periods*samplesPerPeriod),length(st)), st, 'r');  % Grafica la señal continua 
    hold off;
    axis tight;
    title(" s(n) ");
    xlabel(strcat('Time [ms]'));
    set(gca,'xtick',[0 10 20 30 40]);
    set(gca,'xticklabels',{'0','2.5','5','7.5','10'});
    
end