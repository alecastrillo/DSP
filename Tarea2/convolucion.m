function y = convolucion(a, b)

    %Para la convolucion se utiliza y(n)=a(n)*b(n)
    %Donde y(n) es la salida. 
    %a(n) es la entrada y b(n) es la respuesta al impulso.

    l1=input('Digite la posicion inicial del a(n): '); %Se pide la posicion incial de a(n)
    u1=input('Digite la posicion final de a(n): '); %Se pide la posicion final de a(n)
    x1=l1:1:u1; 

    l2=input('Digite la posicion inicial de b(n): '); %Se pide la posicion incial de b(n)
    u2=input('Digite la posicion final de b(n): '); %Se pide la posicion final de b(n)

    h1=l2:1:u2; 

    l=l1+l2; %Se suman las posiciones iniciales.
    u=u1+u2; %Se suman las posiciones finales.
    n=l:1:u; %Se crea un vector con el numero de muestras.
    s=numel(n); %Se calcula el numero de muestras.
    i=1; 

    for i=1:s %Se inicia un for de 1 hasta el numero de muestras
        y(i)=0; 
        for k=1:numel(a) %Se inicia un for de 1 hasta la cantidad de muestras de a(n)
            if (i+1-k)<=0 %Condicion para determinar limite a la izquierda. 
                y(i)=y(i)+(a(k)*0); %La multiplicacion de a(n)b(n)es cero.
            else if (i+1-k)>numel(b)%Condicion para determinar limite a la derecha.
                y(i)=y(i)+(a(k)*0); %La multiplicacion de a(n)b(n) es cero.
            else 
                y(i)=y(i)+(a(k)*b(i+1-k));%Realiza la multiplicacion de las muestras y las va sumando en y(i).
                k=k+1; %Se va avanzando en el desplazamiento.
            end 
            end 
        end
    i=i+1; %Se avanza de muestra.
    end
    
    %Graficas
    disp(y);
    %Grafica a(n)
    subplot(2,2,1);stem(x1,a, 'r'); 
    title('Grafica de a(n)');xlabel('n');ylabel('a(n)'); 
    %Grafica b(n)
    subplot(2,2,2);stem(h1,b, 'r'); 
    title('Grafica de b(n)');xlabel('n');ylabel('b(n)'); 
    %Grafica del resultado
    subplot(2,2,[3 4]);stem(n,y, 'b'); 
    title('Resultado');xlabel('n');ylabel('y(n)');

end

%Con esto hice la prueba para la convolucion
%algoritmo([1 2 3 1] ,[1 2 1 -1])
%a(n)=[1 2 3 1] ---- pos inicial 0, pos final 3
%b(n)=[1 2 1 -1] ---- pos inicial -1, pos final 2