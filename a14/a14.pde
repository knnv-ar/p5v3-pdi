/*
  Procesamiento Digital de Imágenes
  Ejemplo 14: Lectura de píxeles: get() V para
  obtener valor de pixel
*/

PImage imagen;
imagen = loadImage("pLogo.png");
noStroke();
image(imagen, 0, 0); 
// Obtiene el color de un pixel en x e y (20, 30)
color c = get(20, 30);
fill(c);
rect(20, 30, 40, 40);
stroke(255, 255, 0);
point(20, 30);
