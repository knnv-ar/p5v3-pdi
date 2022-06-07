/*
  Procesamiento Digital de Imágenes
  Ejemplo 04: Otro ejemplo de tint()
*/

PImage imagen; 
imagen = loadImage("baboon100.png"); 
tint(0, 153, 204); // tinta azul
image(imagen, 0, 0); 
noTint(); // tinta deshabilitada
image(imagen, 50, 0); 