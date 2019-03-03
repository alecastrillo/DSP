%-------------------------
% Ejercicio 4
% Versión 2
%-------------------------

function ejercicio42( x , n )
    
    figure('Name','Ejercicio 4');
    
    subplot(2,2,1);
    title(" x(n) ");
    stem(n, x, 'filled', 'g');
    axis tight;
    
    zeroIndex = find(n==0);
    leftZero  = zeroIndex-1;
    rightZero = length(n)-zeroIndex;
    
    if ~(zeroIndex==1 || zeroIndex==length(n) || leftZero==rightZero)
        
        if leftZero < rightZero
            
           nfill = fliplr(-n(leftZero+zeroIndex+1):n(1)-n(2):-n(end));
           n     = horzcat(nfill, n);
           x     = horzcat(zeros(1,rightZero-leftZero), x);
           
        elseif leftZero > rightZero
            
           nfill = -n(leftZero-rightZero):n(2)-n(1):-n(1);
           n     = horzcat(n, nfill);
           x     = horzcat(x, zeros(1,leftZero-rightZero));
           
        end
        
    end
    
    xp = (x + fliplr(x))/2;
    xi = (x - fliplr(x))/2;
    
    subplot(2,2,2);
    title(" xp(n) ");
    stem(n, xp, 'filled', 'g');
    axis tight;

    
    subplot(2,2,3);
    title(" xi(n) ");
    stem(n, xi, 'filled', 'g');
    axis tight;
    
    subplot(2,2,4);
    title(" xp(n) + xi(n) ");
    stem(n, xp + xi , 'filled', 'g');
    axis tight;
    
end

% Pruebas
% ejercicio42([1 1 1 0 -1 -1 2],[0 1 2 3 4 5 6])
% ejercicio42([1 1 1 0 -1 -1 2],[-3 -2 -1 0 1 2 3])
% ejercicio42([1 1 1 0 -1 -1 2],[-4 -3 -2 -1 0 1 2])
% ejercicio42([1 1 1 0 -1 -1 2],[-1 0 1 2 3 4 5])