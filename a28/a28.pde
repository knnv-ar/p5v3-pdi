/*
  Procesamiento Digital de Imágenes
  Ejemplo 28: Mezcla de colores con blend() III
  entre dos imágenes
*/

PImage img = loadImage("baboon100.png");
PImage img2 = loadImage("pLogo.png");
img.blend(img2, 12, 12, 76, 76, 12, 12, 76, 76, ADD);
image(img, 0, 0); 