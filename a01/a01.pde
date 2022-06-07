/*
  Procesamiento Digital de Imágenes
  Ejemplo 01: Uso de tipo PImage, loadimage() e image()
*/

// Primero se debe importar la imagen a usar: Sketch > Add File...

// Declaración de la variable "imagen" de tipo de dato "PImage" (almacenamiento de imagen)
PImage imagen;
// La imagen debe estar en una carpeta llamada "data". 
imagen = loadImage("baboon100.png");
// Función image(): permite mostrar una imagen en la pantalla.
// Sintaxis: image(name, x, y)
image(imagen, 0, 0); 