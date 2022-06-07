/*
  Procesamiento Digital de Imágenes
  Ejemplo 11: Lectura de píxeles: get() II
*/

smooth();
strokeWeight(8);
line(0, 0, width, height);
line(0, height, width, 0);
noStroke();
ellipse(18, 50, 16, 16);
// Obtiene todo el área de visualización,
PImage cross = get();           
// y lo muestra escalado a 40 x 40 píxeles:
image(cross, 42, 30, 40, 40);

