/*
  Procesamiento Digital de Imágenes
  Ejemplo 40: Componentes de píxel I
  usando red(), green() y blue() para invertir imagen
 */

// Las funciones red(), green() y blue() se usan para
// leer los componentes individuales de color de cada
// pixel de una imagen.

// En este ejemplo crearemos un filtro de inversión.

PImage arch = loadImage("baboon100.png");
background(arch);
loadPixels();
for (int i = 0; i < width*height; i++) {
  color p = pixels[i];         // Toma el px
  float r = 255 - red(p);      // Modifica el valor de rojo
  float g = 255 - green(p);    // Modifica el valor de verde
  float b = 255 - blue(p);     // Modifica el valor de azul
  pixels[i] = color(r, g, b);  // Asigna el valor modificado
}
updatePixels();