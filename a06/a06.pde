/*
  Procesamiento Digital de Imágenes
  Ejemplo 06: Secuencia de imágenes de forma aleatoria
*/

// El número de fotogramas de la animación:
int numFrames = 5;
PImage[] imagenes = new PImage[numFrames];

void setup() {
  size(100, 100);
  for (int i = 0; i < imagenes.length; i++) {
    String imagenNombre = "ani-" + nf(i, 3) + ".png";
    imagenes[i] = loadImage(imagenNombre);
  }
} 

void draw() { 
  // El fotograma a mostrar:
  int frame = int(random(0, numFrames));
  image(imagenes[frame], 0, 0);
  frameRate(random(1, 60.0));
}

