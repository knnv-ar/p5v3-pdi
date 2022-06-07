/*
  Procesamiento Digital de Imágenes
  Ejemplo 15: Lectura de píxeles: get() VI para
  obtener valor de pixel de forma dinámica
*/

PImage imagen;
void setup() {
  size(100, 100);
  noStroke();
  imagen = loadImage("pLogo.png");
}
void draw() {
  image(imagen, 0, 0);  
  color c = get(mouseX, mouseY);
  fill(c);
  rect(50, 0, 50, 100);
}

