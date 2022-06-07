/*
  Procesamiento Digital de Imágenes
  Ejemplo 35: Procesamiento digital de imagen IV
  usando pixels[]
*/

// ¡Importante!: en programas que manipulan muchos píxeles
// a la vez se recomienda usar pixels[] en vez de get()
// y set() ya que aquel funciona más rápido que los últimos.
PImage arch;
void setup() {
  size(100, 100);
  noStroke();
  arch = loadImage("baboon100.png");
}
void draw() { 
  background(arch); 
  // constrain() no debe exceder los límites del array
  int mx = constrain(mouseX, 0, 99);  
  int my = constrain(mouseY, 0, 99);  
  loadPixels();
  color c = pixels[my*width + mx];
  updatePixels();
  fill(c);
  rect(20, 20, 60, 60);
}