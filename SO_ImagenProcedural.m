% OORTS SARA - SISTEMAS DE VISIÓN ARTIFICIAL
%Actividad 2.1 Imagen Procedural - Fecha: 18 de febrero de 2025
%Propón una secuancia de funciones para generar una imagen a color
%con patron procedural. La imagen debe ser de 720 x 1080 pixeles.

%%Inicio
clc;
clear all;
close all;

%Tamaño imagen
altura= 720;
anchura= 1080;

%Secuencia de ecuaciones
for x = 1:altura
    for y = 1:anchura
        f1(x,y)= 255 * (1 - cos(sqrt(x^2 + y^2) / 10));
        f2(x, y) = 255 * (1 - cos(sqrt((x - 720)^2 + (y - 1080)^2) / 10));
        f3(x,y)= 127.5*(sin(0.07*x)+sin(0.07*y))/2+127.5;
    end
end

%Mostramos imagen
IMA(:,:,1)= f3;
IMA(:,:,2)= f1;
IMA(:,:,3)= f2;

imshow(uint8(IMA));