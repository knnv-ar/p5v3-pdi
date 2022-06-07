/*
  Procesamiento Digital de Imágenes
  Ejemplo 36: Procesamiento digital de imagen V
  usando pixels[]
 */

PImage arch;
void setup() {
  size(100, 100);
  arch = loadImage("baboon100.png");
}
void draw() {
  background(204);
  int mx = constrain(mouseX, 0, 99);
  int my = constrain(mouseY, 0, 99);
  arch.loadPixels();
  arch.pixels[my * width + mx] = color(255);
  arch.updatePixels();
  image(arch, 50, 0);
}