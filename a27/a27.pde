/*
  Procesamiento Digital de Imágenes
  Ejemplo 27: Mezcla de colores con blend() II
  entre ventana de representación e imagen
*/

PImage img = loadImage("baboon100.png");
background(0);
stroke(255);
strokeWeight(24);
smooth();
line(54, 10, 34, 90);
line(10, 44, 80, 64);
blend(img, 0, 0, 100, 100, 0, 0, 100, 100, DARKEST); 