%MENDOZA OORTS SARA ESTELA - SISTEMAS DE VISIÓN ARTIFICIAL
%Actividad 1. Cubo de colores - Fecha: 11 de febrero de 2025

%{
ACTIVIDAD.En el ambiente de matlab, genera un código que presente el color
representante de las ocho esquinas de cubo RGB  y una escala de gris en un
arreglo de 3 x 3 con el comando subplot.
%}


%CÓDIGO
figure('Name','MENDOZA OORTS SARA ESTELA'); 

%1.Se crea un espacio para mostrar el color (cuadrado en este caso)
%Nota. Se repite el último vértice para evitar error de figura.
x= [0, 1, 1, 0 , 0];
y= [0, 0, 1, 1, 0];

%Colores del cubo
%Negro
subplot(3,3,1);
fill(x,y,[0,0,0]);  % fill(x,y,código de color)
title('Negro (R=0, G=0, B=0)');

%Rojo
subplot(3,3,2);
fill(x,y,[1,0,0]); 
title('Rojo (R=1, G=0, B=0)');

%Verde
subplot(3,3,3);
fill(x,y,[0,1,0]); 
title('Verde (R=0, G=1, B=0)');

%Azul
subplot(3,3,4);
fill(x,y,[0,0,1]); 
title('Azul (R=0, G=0, B=1)');

%Cyan
subplot(3,3,5);
fill(x,y,[0,1,1]); 
title('Cyan (R=0, G=1, B=1)');

%Magenta
subplot(3,3,6);
fill(x,y,[1,0,1]); 
title('Magenta (R=1, G=0, B=1)');

%Amarillo
subplot(3,3,7);
fill(x,y,[1,1,0]); 
title('Amarillo (R=1, G=1, B=0)');

%Blanco
subplot(3,3,8);
fill(x,y,[1,1,1]); 
title('Blanco (R=1, G=1, B=1)');

%Escala de grises
%Se genera vector de valores
vector= linspace(0,1,256);  %linspace(inicio, fin, numero de particiones iguales)
subplot(3,3,9);
imshow(repmat(vector,[256,1]));
title('Escala de grises');

%NOTA2. repmat. crea matriz con el vector
%Replica en filas pero en columnas se mantiene igual).
