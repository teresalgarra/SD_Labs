clear all;
close all;

%Definimos la longitud que queremos de ceros:
L= 30;

%Definimos el eje X para representar:
nn = 0:(L-1);

%Para hacer el impulso, hacemos un vector de ceros y luego hacemos que el
%primer elemento sea 1
imp = zeros(L,1);
imp(1) = 1;

%Representamos como señal digital y como señal contínua
figure(1);
stem(nn,imp);
figure(2);
plot(nn,imp);

%Para las señales digitañles es mejor stem que plot, porque plot lo toma
%como una señal contínua y hace una pendiente hacia abajo que realmente no
%se corresponde con lo que es el impulso unitario.

%Vamos a hacer los ejercicios:

%Primer apartado:

%Definimos los parámetros necesarios:
A1 = 0.9;

Li = 0;
Lf = 20;
R = -5;
nn1 = Li:(Lf-1);

%Creamos el impulso:
imp1 = zeros(Lf+abs(Li),1);
imp1(abs(R)+1) = 1;

x1 = A1 * imp1;

%Representamos:
figure(3);
stem(nn1,x1);

%Segundo apartado:

%Definimos los nuevos parámetros:
A2 = 4.5;

Li = -10;
Lf = 10;
R = 5;
nn2 = Li:(Lf-1);

%Hay que tener cuidado con que el impulso sea negativo ahora:
imp2 = zeros(Lf+abs(Li),1);
imp2(abs(R)+1) = 1;

x2 = A2 * imp2;

%Representamos:
figure(4);
stem(nn2,x2);