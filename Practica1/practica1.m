%PRACTICA 2
clear all; 
close all; 

%Realizacion guiada

%Aliasing

%Par�metros:
A = 1; %Amplitud
F = 3; %Frecuencia anal�gica
Theta = 0; %Fase

%Tenemos una se�al s(t)=A*cos(2*pi*F*t+Theta). Hacemos una simulaci�n
%anal�gica y una simulaci�n digital.

%Vectores de tiempo
t1 = 0:0.001:2;
t2 = 0:0.02:2;
Fs2 = 1/0.02;

%Evaluamos s(t) en t1 y t2:
x1 = A*cos(2*pi*F*t1+Theta);
x2 = A*cos(2*pi*F*t2+Theta);

%Vamos cambiando las frecuencias de muestreo para ver c�mo funciona:

%Ejemplo 1:
Fs3 = 10;
t3 = 0:(1/Fs3):2;
x3 = A*cos(2*pi*F*t3+Theta);

%Ejemplo 2:
Fs4 = 6;
t4 = 0:(1/Fs4):2;
x4 = A*cos(2*pi*F*t4+Theta);

%Ejemplo 3:
Fs5 = 3.5;
t5 = 0:(1/Fs5):2;
x5 = A*cos(2*pi*F*t5+Theta);

%Representamos 
figure(1);

subplot(4,1,1);
plot(t1,x1,'g');
hold on;
stem(t2,x2,'b');
hold off;

subplot(4,1,2);
plot(t1,x1,'g');
hold on;
stem(t3,x3,'b');
hold off;

subplot(4,1,3);
plot(t1,x1,'g');
hold on;
stem(t4,x4,'b');
hold off;

subplot(4,1,4);
plot(t1,x1,'g');
hold on;
stem(t5,x5,'b');
hold off;

%TRANSFORMADA DE FOURIER

%Hacemos un script para ver el espectro de frecuencias de la se�al
%dependiendo de las frecuencias de muestreo:

%Ejemplo 1:
espectro1 = abs(fft(x3,1024));
frecuencias1 = 0:Fs3/(length(espectro1)-1):Fs3;

%Ejemplo 2:
espectro2 = abs(fft(x4,1024));
frecuencias2 = 0:Fs4/(length(espectro2)-1):Fs4;

%Ejemplo 3:
espectro3 = abs(fft(x5,1024));
frecuencias3 = 0:Fs5/(length(espectro3)-1):Fs5;

%Representamos:
figure(2);

subplot(3,1,1);
plot(frecuencias1, espectro1);

subplot(3,1,2);
plot(frecuencias2, espectro2);

subplot(3,1,3);
plot(frecuencias3, espectro3);

%Lo que sale no son deltas, son funciones sinc(x) porque el ordenador no
%puede tomar infinitas muestras para que la linea tienda a 0. Pueden ser
%m�s estrechas o menos seg�n tomemos.
%Salen dos "deltas" porque replicamos digitalmente

%EXPERIENCIA AUDITIVA

FCD = 44100;
FCa = 22050;
FRa = 11025;
FLT = 8000;

Fc = 7000;

%Escuchamos los cosenos que hemos hecho:

sound(x2, Fs2);
%soundsc(x3, Fs3);
%soundsc(x4, Fs4);
%soundsc(x5, Fs5);

pause()
