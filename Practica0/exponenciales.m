%Exponenciales y exponenciales complejas:
clear all;
close all;

%EXPONENCIAL CRECIENTE

%Usamos la función genexp que hemos definido para poder hacer una
%exponencial:
exp1=genexp(2,-8,17);

%La representamos:
figure(1);
stem((-8:1:8),exp1, 'g');
hold on;
plot((-8:1:8),exp1, 'b');

%EXPONENCIAL DECRECIENTE

%Comprobamos que podemos usar genexp para valores de a<1 positivos y
%negativos:

%Uno:
exp2 = genexp(0.5,-10,21);

%Dos:
exp3 = genexp(-0.5,-5,16);

%Tres:
exp4 = genexp(-0.125,-20,21);

%Cuatro:
exp5 = genexp(-0.3,-10,21);

%Representamos:
figure(2);

subplot(2,2,1);
stem((-10:1:10),exp2, 'g');
hold on;
plot((-10:1:10),exp2, 'b');

subplot(2,2,2);
stem((-5:1:10),exp3, 'g');
hold on;
plot((-5:1:10),exp3, 'b');

subplot(2,2,3);
stem((-20:1:0),exp4, 'g');
hold on;
plot((-20:1:0),exp4, 'b');

subplot(2,2,4);
stem((-10:1:10),exp5, 'g');
hold on;
plot((-10:1:10),exp5, 'b');

%Ahora comprobamos con la fórmula:

%Uno:
exp2_1 = sum(exp2)
exp6 = (((0.5).^(-10))-((0.5).^21))/(1-0.5)

%Dos:
exp3_1 = sum(exp3)
exp7 = (((-0.5).^(-5))-((-0.5).^21))/(1-(-0.5))

%Tres:
exp4_1 = sum(exp4)
exp8 = (((-0.125).^(-20))-((-0.125).^21))/(1-(-0.125))

%Cuatro:
exp5_1 = sum(exp5)
exp9 = (((-0.3).^(-10))-((-0.3).^21))/(1-(-0.3))

%Ambos resultados son iguales.

%EXPONENCIALES COMPLEJAS

%Definimos un intervalo de tiempo:
n=0:50;

%Construimos la exponencial compleja:
x=exp(j*n/3);

%Representamos:
figure(3);

subplot(2,1,1);
stem(n, real(x), 'g');
hold on;
plot(n, real(x), 'b');
title ('Parte real');

subplot(2,1,2);
stem(n, imag(x), 'g');
hold on;
plot(n, imag(x), 'b');
title ('Parte imaginaria');

%Hemos representado por un lado la parte real, y por otro, la parte
%imaginaria. Se puede observar que son un coseno y un seno respectivamente,
%con lo cual hemos visto grñaficamente la Ley de Euler.

%Segunda exponencial compleja:

%Definimos los parámetros:

r = 3;
w = pi/10;
fase = 0;

n = 1:20;

figure(4);
axis equal;
for i=1:20;
    x2=r*exp(j*w*n);
    stem(n(i), x2(i));
    hold on;
    pause(0.3);
end

%Cada 0.3 segundos se representa otro de los puntos.

%Todos los puntos están a la distancia r*cos(w*n) del (0,0).

