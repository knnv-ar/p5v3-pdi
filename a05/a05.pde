/*
  Procesamiento Digital de Imágenes
  Ejemplo 05: Secuencia de imágenes
*/

// Número de fotogramas de la animación:
int numFrames = 12;
// Array de imágenes:
PImage[] imagenes = new PImage[numFrames];
    
void setup() {
  size(100, 100);
  // 30 fotogramas por segundo:
  frameRate(30);
  // Automatización del procedimiento de carga de imágenes.
  // Una cantidad de fotogramas menor a 100 necesita agregar   
  // un cero adicional para que los archivos se puedan
  // nombrar correctamente:
  for (int i = 0; i < imagenes.length; i++) {
    // Contruye el nombre de la imagen a cargar:
    String imagenNombre = "ani-" + nf(i, 3) + ".png";
    imagenes[i] = loadImage(imagenNombre);
  }
} 
  
void draw() { 
  // Calcula el fotograma a mostrar usando el operador
  // módulo "%" para desplazarse por los fotogramas.
  int frame = frameCount % numFrames;  
  image(imagenes[frame], 0, 0);
}
