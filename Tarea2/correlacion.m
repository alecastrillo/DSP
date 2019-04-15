function correlacion(a,b)
    
    %Se hace correlacion de a(n) y b(n)
    
    b = fliplr(b);%Se invierte b(n), ya que el algoritmo de convolucion me vuelve a invertir b(n).
    p = convolucion(a, b);
    
end

%Con esto hice la prueba para la correlacion
%defi([1 2 3 1] ,[1 2 1 -1])
%a(n)=[1 2 3 1] ---- pos inicial 0, pos final 3
%b(n)=[1 2 1 -1] ---- pos inicial -1, pos final 2