/*
  Procesamiento Digital de Imágenes
  Ejemplo 34: Procesamiento digital de imagen III
  Comparación entre pixel[] y set() B
*/

// ¡Importante!: para calcular la posición del pixel
// en la ventana de representación utilizar las
// siguientes ecuaciones:
// x = posicionEnArray % ancho
// y = posicionEnArray / ancho

background(255);
// Las siguientes tres instrucciones equivalen a:
// pixels[5075] = color(0)
int y = 5075 / width;
int x = 5075 % width;
set(x, y, color(0));
