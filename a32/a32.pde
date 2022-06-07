/*
  Procesamiento Digital de Imágenes
  Ejemplo 32: Procesamiento digital de imagen I
  Array pixel[] y funciones complementarias
*/

// Visualizador de minutos.
// Para ver este curioso reloj, usaremos el array pixels[].
// Pero su llamada obliga a usar dos funciones complemen-
// tarias: loadPixels() y updatePixels().

void setup() {
  size(100, 100);
}

void draw() {
  float gray = map(second(), 0, 59, 0, 255);
  color c = color(gray);
  int index = frameCount % (width*height);
  //1. Antes de usar pixels[] se debe llamar a la
  //   función loadPixels(), la cual se utiliza
  //   para crear un array de píxeles (asignada a
  //   la variable global interna pixels[]) de
  //   todo el área de visualización:
  loadPixels();
  //2. Luego asignamos un valor a la posición
  //   "index" actual del array pixel[], el cual
  //   almacena cada pixel utilizando el tipo de
  //   dato "color" de Processing:
  pixels[index] = c;
  //3. Por último llamamos a la función updatePixels(),
  //   la cual se encarga de actualizar la vista del
  //   área de visualización:
  updatePixels();
}

