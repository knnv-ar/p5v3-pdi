/*
  Procesamiento Digital de Imágenes
  Ejemplo 17: Lectura de píxeles: get() VIII
  mediante sintaxis de punto
*/

PImage imagen;
imagen = loadImage("pLogo.png");
stroke(255);
strokeWeight(12);
image(imagen, 0, 0);
line(0, 0, width, height); 
line(0, height, width, 0);
PImage imagenCrop = imagen.get(20, 20, 60, 60); 
image(imagenCrop, 20, 20);

