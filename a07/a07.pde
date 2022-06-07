/*
  Procesamiento Digital de Imágenes
  Ejemplo 07: Imagen animada
*/

PImage img;
float x;
void setup() {
  size(100, 100);                 
  img = loadImage("pLogo.png");
}
void draw() {
  background(204);
  x += 0.5;
  if (x > width) {
    x = -width;
  }     
  image(img, x, 0);
}

