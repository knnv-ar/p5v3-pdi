/*
  Procesamiento Digital de Imágenes
  Ejemplo 30: Copia de píxeles con copy() II
*/

PImage img1, img2;

void setup() {
  size(100, 100);
  img1 = loadImage("pLogo.png");
  img2 = loadImage("baboon100.png");
}
void draw() {
  background(204);
  image(img1, 0, 0); 
  int my = constrain(mouseY, 0, 67);
  copy(img2, 0, my, 100, 33, 0, my, 100, 33);
}