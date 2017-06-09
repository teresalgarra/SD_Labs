%Tren de impulsos

%Definimos los parámetros que nos piden:
A = 2;   %Amplitud
P = 5;   %Periodo
M = 10;  %Número de periodos

nn=0:(M*P-1);  %Eje X

%Pasamos a crear el tren de impulsos:
s=zeros(M*P);
s(1:P:M*P)=A; %Desde 1 hasta el número de ciclos, cada periódo, s = amplitud

%Representamos:
stem(nn,s);