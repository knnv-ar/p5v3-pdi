/*
  Procesamiento Digital de Imágenes
  Ejemplo 25: Filtros con filter() IV
  con sintaxis de punto
 */

PImage img = loadImage("baboon100.png");
image(img, 0, 0); 
img.filter(INVERT);
image(img, 50, 0); 