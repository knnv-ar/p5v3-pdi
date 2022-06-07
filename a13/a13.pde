/*
  Procesamiento Digital de Imágenes
  Ejemplo 13: Lectura de píxeles: get() IV con imagen
*/

PImage imagen;
imagen = loadImage("ani-000.png");
image(imagen, 0, 0); 
// Toma todo el área de visualización:
PImage recorte = get();
image(recorte, 0, 50);  

