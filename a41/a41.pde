/*
  Procesamiento Digital de Imágenes
  Ejemplo 41: Componentes de píxel II
  usando red(), green() y blue() para aclarar imagen
 */

PImage arch = loadImage("baboon100.png");
background(arch);
loadPixels();
for (int i = 0; i < width*height; i++) {
  color p = pixels[i];         // Toma el px
  float r = red(p) * 2;      // Modifica el valor de rojo
  float g = green(p) * 2;    // Modifica el valor de verde
  float b = blue(p) * 2;     // Modifica el valor de azul
  pixels[i] = color(r, g, b);  // Asigna el valor modificado
}
updatePixels();