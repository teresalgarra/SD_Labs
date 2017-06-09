function y = genexp(a,n0,L)

%a: entrada escalar
%n0: instante inicial
%L: longitud de la señal generada
%y: señal de salida

%Definimos un error para que no nos metan longitudes negativas:
if(L<1)
    error ('GENEXP: Longitud no positiva');
end

%Creamos el vector de tiempos:
nn = n0 + [0:(L-1)];

%Ya solo queda crear la exponencial de base a elevada al vector elegido:
y=a.^nn;

end
