%Sara Oorts
%Actividad 2. Cubo de colores - Fecha: 18 de febrero de 2025

clc;
clear all;
close all;

%Declaramos tamaño de imagen(matriz completa)
IMA = zeros(765, 1020, 3);  % 756x1020, 3 canales (RGB)

%Cara 1 (verde,negro,cyan,azul)
for x = 0:255
    for y = 0:255
        IMA(x+1, y+1, 1) = 0;        
        IMA(x+1, y+1, 2) = x;        
        IMA(x+1, y+1, 3) = y;        
    end
end
%Rotación para acomodar
cara1 = IMA(1:255, 1:255, :);
cara1_final = imrotate(cara1, -90);
IMA(1:255, 1:255, :) = cara1_final;


%Cara 2 (negro,rojo,azul,magenta)
for x = 1:255  %255x
    for y = 254:510  %255
        IMA(x+1, y+1, 1) = (y-255)-x;   
        IMA(x+1, y+1, 2) = 1; 
        IMA(x+1, y+1, 3) = (y-255);        
    end
end
%Rotación para acomodar
cara2 = IMA(1:256, 255:510, :);
cara2_final = imrotate(cara2, 270);
IMA(1:256, 255:510, :) = cara2_final;

% Cara 3 (azul,magenta,cyan,blanco)
for x = 255:510  %255x desplazado
    for y = 255:510  %255y
        IMA(x+1, y+1, 1) = x-255;             
        IMA(x+1, y+1, 2) = 255 - (y-255);      
        IMA(x+1, y+1, 3) = 255;           
    end
end
%Rotación para acomodar
cara3 = IMA(255:510, 255:510, :);
cara3_final = imrotate(cara3, 90);
IMA(255:510, 255:510, :) = cara3_final;

% Cara 4 (magenta,rojo,blanco,amarillo)
for x = 255:510 %255
    for y = 510:765 %510 desplazado
        IMA(x+1, y+1, 1) =255 - (765-y) + (510-x) + 255;
        IMA(x+1, y+1, 2) = 255 - (510-x);
        IMA(x+1, y+1, 3) =765-y;
    end
end
%Rotacion para acomodar
%cara4 = IMA(255:510, 510:765, :);
%cara4_final = imrotate(cara4, -270);
%IMA(255:510, 510:765, :) = cara4_final;

% Cara 5
for x = 510:765
    for y = 510:765
        IMA(x+1,y+1,1)= 255-(x-510);  
        IMA(x+1,y+1,2)= 255;
        IMA(x+1,y+1,3)= 255-(y-510);       
    end
end

% Cara 6 
for x = 509:765
    for y = 765:1020
        IMA(x+1, y+1, 1) = x - 510;         
        IMA(x+1, y+1, 2) = y - 765;         
        IMA(x+1, y+1, 3) = 1;              
    end
end
%Rotación para acomodar
cara6 = IMA(509:765, 765:1020, :);
cara6_final = imrotate(cara6, 180);
IMA(509:765, 765:1020, :) = cara6_final;


%Espacios en blanco
for x = 255:510 
    for y = 0:255
        IMA(x+1, y+1, 1) = 255;       
        IMA(x+1, y+1, 2) = 255;       
        IMA(x+1, y+1, 3) = 255;       
    end
end
for x = 510:765 
    for y = 0:255
        IMA(x+1, y+1, 1) = 255;       
        IMA(x+1, y+1, 2) = 255;       
        IMA(x+1, y+1, 3) = 255;       
    end
end
for x = 509:765 
    for y = 255:510
        IMA(x+1, y+1, 1) = 255;       
        IMA(x+1, y+1, 2) = 255;       
        IMA(x+1, y+1, 3) = 255;       
    end
end
for x = 510:765 
    for y = 255:510
        IMA(x+1, y+1, 1) = 255;       
        IMA(x+1, y+1, 2) = 255;       
        IMA(x+1, y+1, 3) = 255;       
    end
end
for x = 0:255
    for y = 509:765
        IMA(x+1, y+1, 1) = 255;       
        IMA(x+1, y+1, 2) = 255;       
        IMA(x+1, y+1, 3) = 255;       
    end
end
for x = 0:255
    for y = 765:1020
        IMA(x+1, y+1, 1) = 255;       
        IMA(x+1, y+1, 2) = 255;       
        IMA(x+1, y+1, 3) = 255;       
    end
end
for x = 255:510
    for y = 765:1020
        IMA(x+1, y+1, 1) = 255;       
        IMA(x+1, y+1, 2) = 255;       
        IMA(x+1, y+1, 3) = 255;       
    end
end



%Imagen completa del cubo
imshow(uint8(IMA));

%Guardado de imagen en archivo BMP
imwrite(uint8(IMA), 'CuboColores.bmp');
