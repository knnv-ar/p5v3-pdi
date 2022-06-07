/*
  Procesamiento Digital de Imágenes
  Ejemplo 02: Otra versión de image()
*/

size(200, 200);
PImage imagen;
imagen = loadImage("baboon100.png");
// Sintaxis: image(name, x, y, width, height)
image(imagen, 20, 20, 160, 160); 