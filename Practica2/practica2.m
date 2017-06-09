clear all;
close all;

nn = -5:5;
cuadrada = zeros ( length ( nn ) ,1) ;
cuadrada (5:10) = ones (6 ,1) ;
triangular = zeros ( length ( nn ) ,1) ;
triangular (1:5) =1:5;
triangular (6:9) =4: -1:1;
visualiza_conv ( cuadrada , triangular , nn , 0 ) ;
convolucion( cuadrada, triangular);
