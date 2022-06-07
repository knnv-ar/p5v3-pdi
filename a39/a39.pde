/*
  Procesamiento Digital de Imágenes
  Ejemplo 39: Procesamiento digital de imagen VIII
  usando pixels[] lectura alternativa
*/

PImage arch = loadImage("baboon100.png");
int count = arch.width * arch.height;
loadPixels();
for (int i = 0; i < count; i++) {
  // Probar también con otras expresiones como:
  // pixels[i] = arch.pixels[count - (i/2) - 1]
  pixels[i] = arch.pixels[i/2];
}
updatePixels();