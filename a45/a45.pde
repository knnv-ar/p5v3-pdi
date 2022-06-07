/*
  Procesamiento Digital de Imágenes
  Ejemplo 45: Convolución II
*/

// Convierte los valores de pixel a un diámetro de círculo.

PImage arch;
int index;
void setup() {
  size(100, 100);
  smooth();
  fill(0);
  arch = loadImage("baboon100.png");
  arch.loadPixels();
}
void draw() {
  background(204);
  // Toma un pixel:
  color c = arch.pixels[index];
  // Toma el valor del canal rojo:
  float r = red(c) / 3.0;
  ellipse(width/2, height/2, r, r);
  index++;
  if (index == width*height) {
    // Regresa al primer pixel:
    index = 0;  
  }
}