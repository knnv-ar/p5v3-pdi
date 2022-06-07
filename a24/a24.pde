/*
  Procesamiento Digital de Imágenes
  Ejemplo 24: Filtros con filter() III con
  animación de efectos de filtros
*/

float borroso = 0.0;
void setup() {
  size(100, 100);
  smooth();
  strokeWeight(5);
}
void draw() {
  background(204);
  if (borroso < 16.0) {
    borroso += 0.05;
  }
  line(0, 30, 100, 60);
  filter(BLUR, borroso); 
  line(0, 50, 100, 80);
} 

