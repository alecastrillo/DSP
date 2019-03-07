%-------------------------
% Ejercicio 5
%-------------------------

function sn = ejercicio5(A,Fo,Fs,C,ti,tf)

    snFunc           = @(A,Fo,Fs,C,n) A*sin((2*pi*Fo*n)/Fs+C);
    samplesPerPeriod = Fs/Fo;
    periods          = (tf-ti) * Fo;
    samples          = 0:1:floor(periods*samplesPerPeriod);
    offset           = ti*2*pi + C;
    sn               = snFunc(A,Fo,Fs,offset,samples);
    
    figure('Name', 'Ejercicio 5');
    stem(samples, sn, 'filled', 'g');
    axis tight;
    title(" s(n) ");

end

% Prueba del profe
% ejercicio5(10,500,4000,1,0,0.01)

