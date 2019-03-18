%-------------------------
% Ejercicio 5
%-------------------------

function ejercicio5(A,Fo,Fs,C,ti,tf)

    
    stFunc           = @(A,Fo,Fs,C,t) A*sin((2*pi*Fo*t)+C);
    snFunc           = @(A,Fo,Fs,C,n) A*sin((2*pi*Fo*n)/Fs+C);
    samplesPerPeriod = Fs/Fo;
    periods          = (tf-ti) * Fo;
    n                = 0:1:floor(periods*samplesPerPeriod);
    sn               = snFunc(A,Fo,Fs,C,n);
    t                = linspace(ti,tf,300);
    st               = stFunc(A,Fo,Fs,C,t);
    
    figure('Name', 'Ejercicio 5');
    hold on; 
    stem(n, sn, 'filled', 'g');
    plot(linspace(0,floor(periods*samplesPerPeriod),length(st)), st, 'r');
    hold off;
    axis tight;
    title(" s(n) ");

end

% Prueba del profe
% ejercicio5(10,500,4000,1,0,0.01)

