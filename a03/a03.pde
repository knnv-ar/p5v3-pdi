/*
  Procesamiento Digital de Imágenes
  Ejemplo 03: Uso de tint() y noTint()
*/

PImage imagen; 
imagen = loadImage("baboon100.png"); 
tint(102); // tinta gris
image(imagen, 0, 0); 
noTint(); // tinta deshabilitada 
image(imagen, 50, 0); 