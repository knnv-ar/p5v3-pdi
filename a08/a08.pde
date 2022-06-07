/*
  Procesamiento Digital de Imágenes
  Ejemplo 08: Imagen animada rotación
*/

PImage img;
float angle;
void setup() {
  size(100, 100);               
  img = loadImage("pLogo.png");
}
void draw() {
  smooth();
  background(204);
  angle += 0.01;
  translate(50, 50);
  rotate(angle);   
  image(img, -50, -50, 50, 50);
}

