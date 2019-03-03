%-------------------------
% Ejercicio 4 - Versión 1
% Asume que la muestra cero es la primera
%-------------------------

function ejercicio4( xn )
    
    n  = 0:1:length(xn)-1;
    xp = (xn + fliplr(xn))/2;
    xi = (xn - fliplr(xn))/2;
    
    figure('Name','Ejercicio 4');
    
    subplot(2,2,1);
    stem(n, xn, 'filled', 'g');
    axis tight;
    title(" x(n) ");
    
    subplot(2,2,2);
    stem(n, xp, 'filled', 'g');
    axis tight;
    title(" xp(n) ");
    
    subplot(2,2,3);
    stem(n, xi, 'filled', 'g');
    axis tight;
    title(" xi(n) ");
    
    subplot(2,2,4);
    stem(n, xp + xi , 'filled', 'g');
    axis tight;
    title(" xp(n) + xi(n) ");
    
end