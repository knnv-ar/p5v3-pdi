/*
  Procesamiento Digital de Imágenes
  Ejemplo 16: Lectura de píxeles: get() VII para
  obtener valor de fila de píxeles de forma dinámica
*/

PImage imagen;
int y = 0;
void setup() {
  size(100, 100);
  imagen = loadImage("pLogo.png");
}
void draw() {
  image(imagen, 0, 0); 
  y = constrain(mouseY, 0, 99);
  for (int i = 0; i < 49; i++) {
    color c = get(i, y);
    stroke(c);
    line(i+50, 0, i+50, 100);
  }
  stroke(255);
  line(0, y, 49, y);
}

