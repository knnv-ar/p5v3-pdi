/*
  Procesamiento Digital de Imágenes
  Ejemplo 38: Procesamiento digital de imagen VII
  usando pixels[] lectura inversa
*/

PImage arch = loadImage("baboon100.png");
int count = arch.width * arch.height;
arch.loadPixels();
loadPixels();
for (int i = 0; i < count; i++) {
  pixels[i] = arch.pixels[count - i - 1];
}
updatePixels();