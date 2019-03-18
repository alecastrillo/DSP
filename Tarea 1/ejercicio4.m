%-------------------------
% Ejercicio 4: Obtener las componentes par e impar de una sec dada, dentro de una función.
% La función ejercicio4(), recibe como parámetros un vector x con valores de muestra y un vector n con las 
% posiciones de las muestras.
% Version 2: Se corrige el desplzamiento de las muestras según el reflejo de la posición cero.
% Integrantes: ALejandra Castrillo - Justin Chavarria - Cristhian Rojas
% Fecha: 12/03/2019
%-------------------------

function ejercicio4( x , n ) # Se declara la función que calcula y grafica las componentes par e impar de una señal.
    
    figure('Name','Ejercicio 4');
    
    subplot(2,2,1); 
    stem(n, x, 'filled', 'g'); # Se grafica la secuencia origial.
    title(" x(n) ");
    axis tight;
    
    zeroIndex = find(n==0); # Se ubica el indice del cero de la secuencia.
    leftZero  = zeroIndex-1; # Se calcula el numero de muestras del lado izquierdo del cero.
    rightZero = length(n)-zeroIndex; # Se cualcula el numero de muestras al lado derecho del cero. 
    
    if ~(zeroIndex==1 || zeroIndex==length(n) || leftZero==rightZero) # Si la secuencia es simétrica respecto al cero, no hace falta acomodarlo para el cálculo. 
                                # Esto es, si el cero está en el centro, en el extremo derecho u izquierdo, entonces no entra en la condición.        
                                # De lo contrario, hay que acomodar la secuencia redefiniendo tanto x como n para el cálculo de las componentes.
        if leftZero < rightZero # Para el caso en que el lado izquierdo tiene menos muestras que el derecho.
            
           nfill = fliplr(-n(leftZero+zeroIndex+1):n(1)-n(2):-n(end)); #Se obtienen los indices de muestras que se deben reflejar respecto al cero.
           n     = horzcat(nfill, n); #Luego se concatenan con la secuencia origial para obtener el vector n reflejado.
           x     = horzcat(zeros(1,rightZero-leftZero), x); #Se concatenan ceros a las muestras que hacen falta según el tamaño del vector n reflejado.
           
        elseif leftZero > rightZero # Para el caso en que el lado derecho tiene menos muestras que el izquierdo.
            
           nfill = -n(leftZero-rightZero):n(2)-n(1):-n(1); #Es el mismo proceso anterior pero al revés.
           n     = horzcat(n, nfill);
           x     = horzcat(x, zeros(1,leftZero-rightZero));
           
        end
        
    end
    
    xp = (x + fliplr(x))/2; #Se definen las funciones para calcular las componentes par e impar respectivamente
    xi = (x - fliplr(x))/2; #Se hace uso de la función 'fliplr()' para reflejar la secuencia
    
    subplot(2,2,2); 
    stem(n, xp, 'filled', 'g'); #Se grafica la función par.
    title(" xp(n) ");
    axis tight;

    
    subplot(2,2,3);
    stem(n, xi, 'filled', 'g'); # Se grafica la función impar.
    title(" xi(n) ");
    axis tight;
    
    subplot(2,2,4); # Se grafica la suma de las funciones par e imapar, la cual debe dar la función original.
    stem(n, xp + xi , 'filled', 'g');
    title(" xp(n) + xi(n) ");
    axis tight;
    
end


% Pruebas
% ejercicio4([1 1 1 0 -1 -1 2],[0 1 2 3 4 5 6])
% ejercicio4([1 1 1 0 -1 -1 2],[-3 -2 -1 0 1 2 3])
% ejercicio4([1 1 1 0 -1 -1 2],[-4 -3 -2 -1 0 1 2])
% ejercicio4([1 1 1 0 -1 -1 2],[-1 0 1 2 3 4 5])