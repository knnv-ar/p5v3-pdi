/*
  Procesamiento Digital de Imágenes
  Ejemplo 21: Escritura de píxeles: set() IV
  con sintáxis de punto
*/

PImage imagen;
imagen = loadImage("pLogo.png");
background(0);
color blanco = color(255);
imagen.set(0, 50, blanco);
imagen.set(1, 50, blanco);
imagen.set(2, 50, blanco);
imagen.set(3, 50, blanco);
imagen.set(4, 50, blanco);
imagen.set(5, 50, blanco);
image(imagen, 20, 0);

