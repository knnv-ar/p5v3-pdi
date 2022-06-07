/*
  Procesamiento Digital de Imágenes
  Ejemplo 33: Procesamiento digital de imagen II
  Comparación entre pixel[] y set() A
*/

// Importante!: para calcular la posición del pixel
// en el array utilizar la siguiente ecuación: (y * ancho) + x

background(255);
// Las siguientes tres instrucciones equivalen a:
// set(25, 50, color(0))
loadPixels();
pixels[50*width + 25] = color(0);
updatePixels();
