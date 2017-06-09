%Señales sinusoidales:
clear all;
close all;

%Damos como entrada un vector:

n1=0:75;

x1=sin(pi/17*n1);
figure(1)
stem(n1,x1, 'g');
hold on;
plot(n1,x1, 'b');

n2=-10:10;

x2=sin(3*pi*n2+(pi/2));
figure(2)
stem(n2,x2, 'g');
hold on;
plot(n2,x2, 'b');

n3=-10:10;

x3=sin(pi*n3+(pi/2));
figure(3)
stem(n3,x3, 'g');
hold on;
plot(n3,x3, 'b');

n4=0:50;

x4=cos(pi/sqrt(23)*n4);
figure(4)
stem(n4,x4, 'g');
hold on;
plot(n4,x4, 'b');

%También podemos plotear todas las gráficas a la vez:
figure(5)

subplot(4,1,1);
stem(n1,x1,'g');
hold on;
plot(n1,x1, 'b');

subplot(4,1,2);
stem(n2,x2,'g');
hold on;
plot(n2,x2, 'b');

subplot(4,1,3);
stem(n3,x3,'g');
hold on;
plot(n3,x3, 'b');

subplot(4,1,4);
stem(n4,x4,'g');
hold on;
plot(n4,x4, 'b');

%Sacamos las frecuencias se cada seno:

%2*pi*f*n=lo que hay dentro de cada seno:

f1 = 1/(17*2)
f2 = 3/2
f3 = 1/2
f4 = 1/(2*sqrt(23))

%Cos4 NO es periódica, porque su frecuencia es un número irracional
%(1/(2*sqrt(23))), y por eso parece que el máximo está cada vez en un sitio
%diferente. El resto de senos son periódicos porque sus frecuencias son
%numeros racionales.

%sen2 y sen3 parecen iguales porque sus frecuencias son equivalentes:
%1.5=0.5+1, luego al estar una entre -0.5 y 0.5 y ser la otra la primera
%+1, son equivalentes.
%Las otras dos, cuanto más cercanas a 0, más realistas respecto al seno
%son.