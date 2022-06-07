/*
  Procesamiento Digital de Imágenes
  Ejemplo 46: Convolución III
 */

// Convierte los valores del canal rojo de los píxeles
// a líneas para crear un histograma:

PImage arch;
void setup() {
  size(100, 100);
  arch = loadImage("baboon100.png");
  arch.loadPixels();
}
void draw() {
  background(204);
  int my = constrain(mouseY, 0, 99);
  for (int i = 0; i < arch.height; i++) {
    // Toma un pixel:
    color c = arch.pixels[my*width + i];
    // Toma el valor del canal rojo:
    float r = red(c);
    line(i, 0, i, height/2 + r/6);
  }
}