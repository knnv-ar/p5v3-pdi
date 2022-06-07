/*
  Procesamiento Digital de Imágenes
  Ejemplo 09: Imagen animada transparencia
*/

PImage img;
// Valor de opacidad al mínimo:
float opacity = 0;      
void setup() {
  size(100, 100);                 
  img = loadImage("pLogo.png");
}
void draw() {
  background(204);
  // Si la opacidad es menor al máximo,
  if (opacity < 255) {  
    // aumenta la opacidad:
    opacity += 0.5;
  }     
  tint(255, opacity);
  image(img, 10, 10, 80, 80);
}
