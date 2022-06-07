/*
  Procesamiento Digital de Imágenes
  Ejemplo 43: Componentes de píxel III
  idem anterior usando técnica optimizada: bit-shifting
*/

PImage arch;
void setup() {
  size(100, 100);
  arch = loadImage("baboon100.png");
}
void draw() {
  background(arch);
  loadPixels();
  for (int i = 0; i < width*height; i++) {
    color p = pixels[i];        // Lee el color de la ventana
    float r = (p >> 16) & 0xFF; // Más rápido que red(p)
    float g = (p >> 8) & 0xFF;  // Más rápido que green(p)
    float b = p & 0xFF;         // Más rápido que blue(p)
    // en caso de necesitar el cálculo del canal alpha:
    // float a = (p >> 24) 0xFF;
    float bw = (r + g + b) / 3.0;
    bw = constrain(bw + mouseX, 0, 255);
    pixels[i] = color(bw);  // Asigna el valor modificado
  }
  updatePixels();
  line(mouseX, 0, mouseX, height);
}