/*
  Procesamiento Digital de Imágenes
  Ejemplo 42: Componentes de píxel III
  usando red(), green() y blue() para desaturar
  la imagen y modificar dinámicamente la
  luminosidad en función de la posición x del mouse
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
    color p = pixels[i];    // Toma el px
    float r = red(p);       // Modifica el valor de rojo
    float g = green(p);     // Modifica el valor de verde
    float b = blue(p);      // Modifica el valor de azul
    float bw = (r + g + b) / 3.0;
    bw = constrain(bw + mouseX, 0, 255);
    pixels[i] = color(bw);  // Asigna el valor modificado
  }
  updatePixels();
  line(mouseX, 0, mouseX, height);
}