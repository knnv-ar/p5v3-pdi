/*
  Procesamiento Digital de Imágenes
  Ejemplo 20: Escritura de píxeles: set() III
*/

PImage imagen;
void setup() {
  size(100, 100);
  imagen = loadImage("pLogo.png");
}

// Las imágenes mostradas mediante set() son calculadas
// de forma más rápida que con image(). Sin embargo, las
// imágenes generadas con set() no pueden ser reescaladas
// ni usadas con tint(), y además no son afectadas por las
// funciones de transformación.
void draw() {
  int x = constrain(mouseX, 0, 50);
  set(x, 0, imagen);
}

