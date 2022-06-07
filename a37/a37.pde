/*
  Procesamiento Digital de Imágenes
  Ejemplo 37: Procesamiento digital de imagen VI
  usando pixels[] lectura alternada de píxeles
*/

PImage arch = loadImage("baboon100.png");
int count = arch.width * arch.height;
loadPixels();
// si modificamos los valores del incremento tendremos:
// 1: lectura normal,
// 2: lee cada dos px,
// 3: lee cada tres px, etc.
for (int i = 0; i < count; i += 1) {
  pixels[i] = arch.pixels[i];
}
updatePixels();