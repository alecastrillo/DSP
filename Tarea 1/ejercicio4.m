%-------------------------
% Ejercicio 4
%-------------------------

% Recibe como parametros un vector x con valores de muestra y un vector n con
% las posiciones de las muestras.
% Integrantes: Alejandra Castrillo - Yostin Chavarria - Cristhian Rojas
% Fecha: 12/03/2019

function ejercicio4( x , n ) 
    
    figure('Name','Ejercicio 4');
    
    % Grafica original
    subplot(2,2,1); 
    stem(n, x, 'filled', 'g');         
    title(" x(n) ");
    axis tight;

    zeroIndex = find(n==0);            % Se ubica el indice del cero de la secuencia.
    leftZero  = zeroIndex-1;           % Numero de muestras del lado izquierdo del cero.
    rightZero = length(n)-zeroIndex;   % Numero de muestras al lado derecho del cero. 
    
    % Se completan las muestras para que quede la misma cantidad del lado
    % derecho que del izquierdo para que se puedan realizar bien los calculos
    % a menos de que la muestra comience o termine en cero ya que no afecta.
    if ~(zeroIndex==1 || zeroIndex==length(n) || leftZero==rightZero)   
        
        if leftZero < rightZero      % Lado izquierdo tiene menos muestras que el derecho.
           
           nfill = fliplr(-n(leftZero+zeroIndex+1):n(1)-n(2):-n(end)); 
           n     = horzcat(nfill, n);                                  
           x     = horzcat(zeros(1,rightZero-leftZero), x);            
           
        elseif leftZero > rightZero  % Lado derecho tiene menos muestras que el izquierdo.
            
           nfill = -n(leftZero-rightZero):n(2)-n(1):-n(1); 
           n     = horzcat(n, nfill);
           x     = horzcat(x, zeros(1,leftZero-rightZero));
           
        end
        
    end
    
    xp = (x + fliplr(x))/2;     % Calculo de parte par
    xi = (x - fliplr(x))/2;     % Calculo de parte impar
    
    % Grafica de la parte par
    subplot(2,2,2); 
    stem(n, xp, 'filled', 'g'); 
    title(" xp(n) ");
    axis tight;

    % Grafica de la parte impar
    subplot(2,2,3);
    stem(n, xi, 'filled', 'g');
    title(" xi(n) ");
    axis tight;
    
    % Grafica de la suma de la parte par e impar
    subplot(2,2,4); 
    stem(n, xp + xi , 'filled', 'g');
    title(" xp(n) + xi(n) ");
    axis tight;
    
end